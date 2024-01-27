// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      json['alternative_player'] as String?,
      json['host'] as String?,
      json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      (json['list'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Episode.fromJson(e as Map<String, dynamic>)),
      ),
      (json['rutube'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, RutubeEpisode.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'alternative_player': instance.alternativePlayer,
      'host': instance.host,
      'episodes': instance.episodes,
      'list': instance.list,
      'rutube': instance.rutube,
    };
