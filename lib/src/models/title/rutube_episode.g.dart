// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rutube_episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RutubeEpisode _$RutubeEpisodeFromJson(Map<String, dynamic> json) =>
    RutubeEpisode()
      ..episode = json['episode'] as int?
      ..createdTimestamp = json['created_timestamp'] as int?
      ..rutubeId = json['rutube_id'] as String?;

Map<String, dynamic> _$RutubeEpisodeToJson(RutubeEpisode instance) =>
    <String, dynamic>{
      'episode': instance.episode,
      'created_timestamp': instance.createdTimestamp,
      'rutube_id': instance.rutubeId,
    };
