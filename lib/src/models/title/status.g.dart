// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      json['string'] as String?,
      $enumDecodeNullable(_$StatusCodesEnumMap, json['code']),
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'string': instance.string,
      'code': _$StatusCodesEnumMap[instance.code],
    };

const _$StatusCodesEnumMap = {
  StatusCodes.atWork: 1,
  StatusCodes.finished: 2,
  StatusCodes.hidden: 3,
  StatusCodes.noOngoing: 4,
};
