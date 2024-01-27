import 'package:json_annotation/json_annotation.dart';
import 'package:anilibria_api/src/models/title/blocked.dart';
import 'package:anilibria_api/src/models/title/names.dart';
import 'package:anilibria_api/src/models/title/player.dart';
import 'package:anilibria_api/src/models/title/posters.dart';
import 'package:anilibria_api/src/models/title/season.dart';
import 'package:anilibria_api/src/models/title/status.dart';
import 'package:anilibria_api/src/models/title/team.dart';
import 'package:anilibria_api/src/models/title/title_franchise.dart';
import 'package:anilibria_api/src/models/torrent/torrents.dart';
import 'package:anilibria_api/src/models/title/type.dart';

part 'title.g.dart';

@JsonSerializable(includeIfNull: true)
class Title {
  int? id;
  String? code;
  Names? names;
  String? announce;
  Status? status;
  Posters? posters;
  int? updated;
  @JsonKey(name: 'last_change')
  int? lastChange;
  Type? type;
  List<String>? genres;
  Team? team;
  Season? season;
  String? description;
  @JsonKey(name: 'in_favourites')
  int? inFavourites;
  Blocked? blocked;
  Player? player;
  Torrents? torrents;
  List<TitleFranchise>? franchises;

  Title(
    this.id,
    this.code,
    this.names,
    this.announce,
    this.status,
    this.posters,
    this.updated,
    this.lastChange,
    this.type,
    this.genres,
    this.team,
    this.season,
    this.description,
    this.inFavourites,
    this.blocked,
    this.player,
    this.torrents,
    this.franchises,
  );

  static Title fromJsonModel(Object? json) =>
      Title.fromJson(json as Map<String, dynamic>);
  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}
