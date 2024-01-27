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
  final int? id;
  final String? code;
  final Names? names;
  final String? announce;
  final Status? status;
  final Posters? posters;
  final int? updated;
  @JsonKey(name: 'last_change')
  final int? lastChange;
  final Type? type;
  final List<String>? genres;
  final Team? team;
  final Season? season;
  final String? description;
  @JsonKey(name: 'in_favourites')
  final int? inFavourites;
  final Blocked? blocked;
  final Player? player;
  final Torrents? torrents;
  final List<TitleFranchise>? franchises;

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
