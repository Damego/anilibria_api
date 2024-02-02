// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleType _$TitleTypeFromJson(Map<String, dynamic> json) => TitleType(
      $enumDecodeNullable(_$TitleCodeTypesEnumMap, json['code']),
      json['episodes'] as int?,
      json['full_string'] as String?,
      json['length'] as int?,
      json['string'] as String?,
    );

Map<String, dynamic> _$TitleTypeToJson(TitleType instance) => <String, dynamic>{
      'code': _$TitleCodeTypesEnumMap[instance.code],
      'string': instance.string,
      'full_string': instance.fullString,
      'episodes': instance.episodes,
      'length': instance.length,
    };

const _$TitleCodeTypesEnumMap = {
  TitleCodeTypes.film: 0,
  TitleCodeTypes.tv: 1,
  TitleCodeTypes.ova: 2,
  TitleCodeTypes.ona: 3,
  TitleCodeTypes.special: 4,
  TitleCodeTypes.web: 5,
};
