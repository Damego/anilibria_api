import 'package:json_annotation/json_annotation.dart';

part 'rutube_episode.g.dart';

@JsonSerializable()
class RutubeEpisode {
  final int? episode;
  @JsonKey(name: 'created_timestamp')
  final int? createdTimestamp;
  @JsonKey(name: 'rutube_id')
  final String? rutubeId;
  RutubeEpisode(this.episode, this.createdTimestamp, this.rutubeId);

  factory RutubeEpisode.fromJson(Map<String, dynamic> json) =>
      _$RutubeEpisodeFromJson(json);
}
