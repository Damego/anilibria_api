// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
      json['string'] as String?,
      json['code'] as int?,
      json['year'] as int?,
      json['week_day'] as int?,
    );

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'string': instance.string,
      'code': instance.code,
      'year': instance.year,
      'week_day': instance.weekDay,
    };
