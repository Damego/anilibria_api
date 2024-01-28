// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncodeEvent _$EncodeEventFromJson(Map<String, dynamic> json) => EncodeEvent(
      json['quality'] as String?,
      json['resolution'] as String?,
      json['id'] as String?,
      json['episode'] as String?,
    );

Map<String, dynamic> _$EncodeEventToJson(EncodeEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episode': instance.episode,
      'resolution': instance.resolution,
      'quality': instance.quality,
    };
