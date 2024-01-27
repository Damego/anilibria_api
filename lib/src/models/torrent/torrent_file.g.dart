// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrent_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TorrentFile _$TorrentFileFromJson(Map<String, dynamic> json) => TorrentFile(
      json['file'] as String?,
      json['size'] as int?,
      json['offset'] as int?,
    );

Map<String, dynamic> _$TorrentFileToJson(TorrentFile instance) =>
    <String, dynamic>{
      'file': instance.file,
      'size': instance.size,
      'offset': instance.offset,
    };
