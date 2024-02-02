import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:anilibria_api/src/models/models.dart';
import 'package:anilibria_api/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'torrent_update.g.dart';

@JsonSerializable()
class TorrentUpdateEvent implements BaseEvent {
  final String? id;
  final Torrents? torrents;
  @JsonKey(name: "updated_torrent_id")
  final int? updatedTorrentId;
  final Dict? diff;

  TorrentUpdateEvent(this.id, this.torrents, this.updatedTorrentId, this.diff);

  factory TorrentUpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$TorrentUpdateEventFromJson(json);
}
