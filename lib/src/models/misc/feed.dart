import 'package:anilibria_api/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  final Title? title;
  final YouTubeVideo? youtube;

  Feed(this.title, this.youtube);

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
