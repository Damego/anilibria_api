// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Torrents _$TorrentsFromJson(Map<String, dynamic> json) => Torrents(
      json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      (json['list'] as List<dynamic>?)
          ?.map((e) => Torrent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TorrentsToJson(Torrents instance) => <String, dynamic>{
      'episodes': instance.episodes,
      'list': instance.list,
    };
