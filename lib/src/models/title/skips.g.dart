// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skips.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skips _$SkipsFromJson(Map<String, dynamic> json) => Skips(
      (json['opening'] as List<dynamic>?)?.map((e) => e as int).toList(),
      (json['ending'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$SkipsToJson(Skips instance) => <String, dynamic>{
      'opening': instance.opening,
      'ending': instance.ending,
    };
