import 'package:anilibria_api/src/models/models.dart';
import 'package:anilibria_api/src/models/utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  final Title? title;
  final YouTubeVideo? youtube;

  Feed(this.title, this.youtube);

  static Feed fromJsonModel(
      Map<String, dynamic> json, String? descriptionType) {
    if (json["title"] != null) {
      json["title"] = normalizeTitle(json, descriptionType);
    }
    return Feed.fromJson(json);
  }

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
