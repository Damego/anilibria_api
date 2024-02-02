import 'package:json_annotation/json_annotation.dart';

enum StatusCodes {
  @JsonValue(1)
  atWork,
  @JsonValue(2)
  finished,
  @JsonValue(3)
  hidden,
  @JsonValue(4)
  noOngoing
}

enum TitleCodeTypes {
  @JsonValue(0)
  film,
  @JsonValue(1)
  tv,
  @JsonValue(2)
  ova,
  @JsonValue(3)
  ona,
  @JsonValue(4)
  special,
  @JsonValue(5)
  web
}

enum SeasonCodes {
  @JsonValue(0)
  unknown,
  @JsonValue(1)
  winter,
  @JsonValue(2)
  sprint,
  @JsonValue(3)
  summer,
  @JsonValue(4)
  autumn
}

enum RssTypes { rss, atom, json }

enum DescriptionTypes {
  html,
  plain,
  noViewOrder;

  static const List<String> _apiNames = ["html", "plain", "no_view_order"];

  String get apiName => _apiNames[index];
}

enum IncludeTypes {
  rawPoster,
  rawTorrent,
  torrentMeta;

  static const List<String> _apiNames = [
    "raw_poster",
    "raw_torrent",
    "torrent_meta"
  ];

  String get apiName => _apiNames[index];
}
