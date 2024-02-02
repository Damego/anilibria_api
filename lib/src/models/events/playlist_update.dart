import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:anilibria_api/src/models/models.dart';
import 'package:anilibria_api/src/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playlist_update.g.dart';

@JsonSerializable()
class PlaylistUpdateEvent implements BaseEvent {
  final int? id;
  final Player? player;
  @JsonKey(name: "updated_episode")
  final Episode? updatedEpisode;
  final String? episode;
  final Dict? diff;
  @JsonKey(name: "reupload")
  final bool? isReupload;

  PlaylistUpdateEvent(this.id, this.player, this.updatedEpisode, this.episode,
      this.diff, this.isReupload);

  factory PlaylistUpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$PlaylistUpdateEventFromJson(json);
}
