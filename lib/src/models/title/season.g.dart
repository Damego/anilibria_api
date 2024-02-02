// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
      json['string'] as String?,
      $enumDecodeNullable(_$SeasonCodesEnumMap, json['code']),
      json['year'] as int?,
      json['week_day'] as int?,
    );

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'string': instance.string,
      'code': _$SeasonCodesEnumMap[instance.code],
      'year': instance.year,
      'week_day': instance.weekDay,
    };

const _$SeasonCodesEnumMap = {
  SeasonCodes.unknown: 0,
  SeasonCodes.winter: 1,
  SeasonCodes.sprint: 2,
  SeasonCodes.summer: 3,
  SeasonCodes.autumn: 4,
};
