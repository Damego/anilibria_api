import 'package:json_annotation/json_annotation.dart';

part 'youtube_video.g.dart';

@JsonSerializable()
class YouTubeVideo {
  final int? id;
  final String? title;
  final String? image;
  final String? youtubeId;
  final int? timestamp;
  final int? comments;
  final int? views;

  YouTubeVideo(this.id, this.title, this.image, this.youtubeId, this.timestamp,
      this.comments, this.views);

  factory YouTubeVideo.fromJson(Map<String, dynamic> json) =>
      _$YouTubeVideoFromJson(json);
}
