// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rutube_episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RutubeEpisode _$RutubeEpisodeFromJson(Map<String, dynamic> json) =>
    RutubeEpisode(
      json['episode'] as int?,
      json['created_timestamp'] as int?,
      json['rutube_id'] as String?,
    );

Map<String, dynamic> _$RutubeEpisodeToJson(RutubeEpisode instance) =>
    <String, dynamic>{
      'episode': instance.episode,
      'created_timestamp': instance.createdTimestamp,
      'rutube_id': instance.rutubeId,
    };
