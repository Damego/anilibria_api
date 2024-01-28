// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encode_start.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncodeStartEvent _$EncodeStartEventFromJson(Map<String, dynamic> json) =>
    EncodeStartEvent(
      json['is_reupload'] as bool?,
      json['id'] as String?,
      json['episode'] as String?,
      json['resolution'] as String?,
      json['quality'] as String?,
    );

Map<String, dynamic> _$EncodeStartEventToJson(EncodeStartEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episode': instance.episode,
      'resolution': instance.resolution,
      'quality': instance.quality,
      'is_reupload': instance.isReupload,
    };
