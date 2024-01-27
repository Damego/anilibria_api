import 'package:json_annotation/json_annotation.dart';
import 'skips.dart';
import 'hls.dart';

part 'episode.g.dart';

@JsonSerializable()
class Episode {
  final int? episode;
  @JsonKey(name: 'created_timestamp')
  final int? createdTimestamp;
  final Hls? hls;
  final String? preview;
  final Skips? skips;
  final String? uuid;

  Episode(this.episode, this.createdTimestamp, this.hls, this.preview,
      this.skips, this.uuid);

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
