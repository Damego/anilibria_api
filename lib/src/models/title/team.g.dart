// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      (json['voice'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['translator'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['editing'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['decor'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['timing'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'voice': instance.voice,
      'translator': instance.translator,
      'editing': instance.editing,
      'decor': instance.decor,
      'timing': instance.timing,
    };
