// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrent_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TorrentMetadata _$TorrentMetadataFromJson(Map<String, dynamic> json) =>
    TorrentMetadata(
      json['hash'] as String?,
      json['name'] as String?,
      (json['announce'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['created_timestamp'] as int?,
      (json['files_list'] as List<dynamic>)
          .map((e) => TorrentFile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TorrentMetadataToJson(TorrentMetadata instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'name': instance.name,
      'announce': instance.announce,
      'created_timestamp': instance.createdTimestamp,
      'files_list': instance.filesList,
    };
