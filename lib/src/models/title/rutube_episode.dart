import 'package:json_annotation/json_annotation.dart';

part 'rutube_episode.g.dart';

@JsonSerializable()
class RutubeEpisode {
  int? episode;
  @JsonKey(name: 'created_timestamp')
  int? createdTimestamp;
  @JsonKey(name: 'rutube_id')
  String? rutubeId;
  RutubeEpisode();

  factory RutubeEpisode.fromJson(Map<String, dynamic> json) =>
      _$RutubeEpisodeFromJson(json);
}
