// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleType _$TitleTypeFromJson(Map<String, dynamic> json) => TitleType(
      json['code'] as int?,
      json['episodes'] as int?,
      json['full_string'] as String?,
      json['length'] as int?,
      json['string'] as String?,
    );

Map<String, dynamic> _$TitleTypeToJson(TitleType instance) => <String, dynamic>{
      'code': instance.code,
      'string': instance.string,
      'full_string': instance.fullString,
      'episodes': instance.episodes,
      'length': instance.length,
    };
