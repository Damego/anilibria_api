// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seed_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeedStats _$SeedStatsFromJson(Map<String, dynamic> json) => SeedStats(
      json['user'] as String?,
      json['downloaded'] as int?,
      json['uploaded'] as int?,
    );

Map<String, dynamic> _$SeedStatsToJson(SeedStats instance) => <String, dynamic>{
      'user': instance.user,
      'downloaded': instance.downloaded,
      'uploaded': instance.uploaded,
    };
