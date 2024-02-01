// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      json['id'] as int?,
      json['code'] as String?,
      json['names'] == null
          ? null
          : Names.fromJson(json['names'] as Map<String, dynamic>),
      json['announce'] as String?,
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      json['posters'] == null
          ? null
          : Posters.fromJson(json['posters'] as Map<String, dynamic>),
      json['updated'] as int?,
      json['last_change'] as int?,
      json['type'] == null
          ? null
          : TitleType.fromJson(json['type'] as Map<String, dynamic>),
      (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      json['season'] == null
          ? null
          : Season.fromJson(json['season'] as Map<String, dynamic>),
      json['description'] as String?,
      json['in_favourites'] as int?,
      json['blocked'] == null
          ? null
          : Blocked.fromJson(json['blocked'] as Map<String, dynamic>),
      json['player'] == null
          ? null
          : Player.fromJson(json['player'] as Map<String, dynamic>),
      json['torrents'] == null
          ? null
          : Torrents.fromJson(json['torrents'] as Map<String, dynamic>),
      (json['franchises'] as List<dynamic>?)
          ?.map((e) => TitleFranchise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'names': instance.names,
      'announce': instance.announce,
      'status': instance.status,
      'posters': instance.posters,
      'updated': instance.updated,
      'last_change': instance.lastChange,
      'type': instance.type,
      'genres': instance.genres,
      'team': instance.team,
      'season': instance.season,
      'description': instance.description,
      'in_favourites': instance.inFavourites,
      'blocked': instance.blocked,
      'player': instance.player,
      'torrents': instance.torrents,
      'franchises': instance.franchises,
    };
