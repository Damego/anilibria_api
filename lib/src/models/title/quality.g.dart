// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quality _$QualityFromJson(Map<String, dynamic> json) => Quality(
      json['string'] as String?,
      json['type'] as String?,
      json['resolution'] as String?,
      json['encoder'] as String?,
      json['lq_audio'] as bool?,
    );

Map<String, dynamic> _$QualityToJson(Quality instance) => <String, dynamic>{
      'string': instance.string,
      'type': instance.type,
      'resolution': instance.resolution,
      'encoder': instance.encoder,
      'lq_audio': instance.lqAudio,
    };
