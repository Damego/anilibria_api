import 'dart:async';

import 'package:anilibria_api/anilibria_api.dart';
import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:anilibria_api/stream_extension.dart';

mixin EventMixin {
  Stream<BaseEvent> get _onEvent => (this as AnilibriaClient).events;

  StreamSubscription<T> on<T>(void Function(T event) func) =>
      _onEvent.whereType<T>().listen(func);

  Stream<PlaylistUpdateEvent> get onPlaylistUpdate =>
      _onEvent.whereType<PlaylistUpdateEvent>();
  Stream<TitleUpdateEvent> get onTitleUpdate =>
      _onEvent.whereType<TitleUpdateEvent>();
  Stream<EncodeStartEvent> get onEncodeStart =>
      _onEvent.whereType<EncodeStartEvent>();
  Stream<EncodeProgressEvent> get onEncodeProgress =>
      _onEvent.whereType<EncodeProgressEvent>();
  Stream<EncodeEndEvent> get onEncodeEnd =>
      _onEvent.whereType<EncodeEndEvent>();
  Stream<EncodeFinishEvent> get onEncodeFinish =>
      _onEvent.whereType<EncodeFinishEvent>();
  Stream<TorrentUpdateEvent> get onTorrentUpdate =>
      _onEvent.whereType<TorrentUpdateEvent>();
}
