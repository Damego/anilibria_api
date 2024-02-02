import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:anilibria_api/consts.dart';
import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:anilibria_api/src/models/events/connect.dart';
import 'package:anilibria_api/src/models/events/subscription.dart';
import 'package:anilibria_api/src/models/models.dart' as models;
import 'package:anilibria_api/types.dart';
import 'package:http/retry.dart';

Map<String, BaseEvent Function(Dict json)> eventMapping = {
  "playlist_update": models.PlaylistUpdateEvent.fromJson,
  "title_update": models.TitleUpdateEvent.fromJson,
  "encode_start": models.EncodeStartEvent.fromJson,
  "encode_progress": models.EncodeProgressEvent.fromJson,
  "encode_end": models.EncodeEndEvent.fromJson,
  "encode_finish": models.EncodeFinishEvent.fromJson,
  "torrent_update": models.TorrentUpdateEvent.fromJson,
};

class WebSocketClient {
  late WebSocket webSocket;
  final StreamController<String> _messageController = StreamController();

  late final Stream<String> messages =
      _messageController.stream.asBroadcastStream();

  late final Stream<BaseEvent> events =
      messages.transform(StreamTransformer.fromBind((messages) async* {
    await for (final message in messages) {
      yield _parseEvent(message);
    }
  })).asBroadcastStream();

  Future<void> connect() async {
    // Неожиданно, но вебсокет может быть отключён на неопределённое время
    // TODO: Добавить макс количество попыток и таймер между ними.
    WebSocket? ws;
    while (true) {
      print("Connecting to ws...");
      try {
        ws = await WebSocket.connect(webSocketUrl);
      } catch (e) {
        continue;
      }
      break;
    }
    webSocket = ws;

    webSocket.asBroadcastStream().listen(
      (event) {
        _messageController.add(event);
      },
      onError: (event) {
        print("error $event");
      },
      onDone: () {
        print("done ${webSocket.closeCode}");
        print(webSocket.closeReason);
        // Сервер часто, по невиданным причинам закрывает соединение с кодом 1005,
        // что не является какой-либо ошибкой,
        // поэтому в этом случае запускаем соединение заного.
        if (webSocket.closeCode == 1005) {
          connect();
        }
      },
      cancelOnError: false,
    );
  }

  BaseEvent _parseEvent(String data) {
    final Dict json = jsonDecode(data);
    print("EVENT DATA ${data}");
    if (json["connection"] != null) {
      return ConnectEvent.fromJson(json);
    }
    if (json["subscribe"] != null) {
      return SubscriptionEvent.fromJson(json);
    }

    var eventType = eventMapping[json["type"]];
    return eventType!.call(json["data"] as Dict);
  }
}
