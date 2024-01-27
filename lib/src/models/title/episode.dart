import 'package:json_annotation/json_annotation.dart';
import 'skips.dart';
import 'hls.dart';

part 'episode.g.dart';

@JsonSerializable()
class Episode {
  int? episode;
  @JsonKey(name: 'created_timestamp')
  int? createdTimestamp;
  Hls? hls;
  String? preview;
  Skips? skips;
  String? uuid;

  Episode(this.episode, this.createdTimestamp, this.hls, this.preview,
      this.skips, this.uuid);

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
