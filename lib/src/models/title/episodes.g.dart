// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Episodes _$EpisodesFromJson(Map<String, dynamic> json) => Episodes(
      (json['first'] as num?)?.toDouble(),
      (json['last'] as num?)?.toDouble(),
      json['string'] as String?,
    );

Map<String, dynamic> _$EpisodesToJson(Episodes instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'string': instance.string,
    };
