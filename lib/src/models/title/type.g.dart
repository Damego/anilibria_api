// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      json['code'] as int?,
      json['episodes'] as int?,
      json['full_string'] as String?,
      json['length'] as int?,
      json['string'] as String?,
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'code': instance.code,
      'string': instance.string,
      'full_string': instance.fullString,
      'episodes': instance.episodes,
      'length': instance.length,
    };
