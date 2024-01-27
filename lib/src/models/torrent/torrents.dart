import 'package:json_annotation/json_annotation.dart';
import 'package:anilibria_api/src/models/title/episodes.dart';
import 'package:anilibria_api/src/models/torrent/torrent.dart';

part 'torrents.g.dart';

@JsonSerializable(includeIfNull: true)
class Torrents {
  final Episodes? episodes;
  final List<Torrent>? list;

  Torrents(this.episodes, this.list);

  factory Torrents.fromJson(Map<String, dynamic> json) =>
      _$TorrentsFromJson(json);
}
