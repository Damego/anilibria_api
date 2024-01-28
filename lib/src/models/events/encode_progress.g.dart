// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encode_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncodeProgressEvent _$EncodeProgressEventFromJson(Map<String, dynamic> json) =>
    EncodeProgressEvent(
      json['encoded_percent'] as bool?,
      json['id'] as String?,
      json['episode'] as String?,
      json['resolution'] as String?,
      json['quality'] as String?,
    );

Map<String, dynamic> _$EncodeProgressEventToJson(
        EncodeProgressEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episode': instance.episode,
      'resolution': instance.resolution,
      'quality': instance.quality,
      'encoded_percent': instance.encodedPercent,
    };
