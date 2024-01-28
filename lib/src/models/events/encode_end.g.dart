// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encode_end.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncodeEndEvent _$EncodeEndEventFromJson(Map<String, dynamic> json) =>
    EncodeEndEvent(
      json['id'] as String?,
      json['episode'] as String?,
      json['resolution'] as String?,
      json['quality'] as String?,
    );

Map<String, dynamic> _$EncodeEndEventToJson(EncodeEndEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episode': instance.episode,
      'resolution': instance.resolution,
      'quality': instance.quality,
    };
