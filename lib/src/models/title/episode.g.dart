// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Episode _$EpisodeFromJson(Map<String, dynamic> json) => Episode(
      json['episode'] as int?,
      json['created_timestamp'] as int?,
      json['hls'] == null
          ? null
          : Hls.fromJson(json['hls'] as Map<String, dynamic>),
      json['preview'] as String?,
      json['skips'] == null
          ? null
          : Skips.fromJson(json['skips'] as Map<String, dynamic>),
      json['uuid'] as String?,
    );

Map<String, dynamic> _$EpisodeToJson(Episode instance) => <String, dynamic>{
      'episode': instance.episode,
      'created_timestamp': instance.createdTimestamp,
      'hls': instance.hls,
      'preview': instance.preview,
      'skips': instance.skips,
      'uuid': instance.uuid,
    };
