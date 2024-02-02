import 'package:anilibria_api/src/enums.dart';
import 'package:anilibria_api/src/models/models.dart';
import 'package:anilibria_api/src/models/utils.dart';
import 'package:json_annotation/json_annotation.dart';

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
  final TitleType? type;
  final List<String>? genres;
  final Team? team;
  final Season? season;
  final Description? description;
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

  static fromJsonModel(
      Map<String, dynamic> json, DescriptionTypes? descriptionType) {
    return Title.fromJson(normalizeTitle(json, descriptionType));
  }

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}
