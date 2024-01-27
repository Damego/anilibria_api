// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Torrent _$TorrentFromJson(Map<String, dynamic> json) => Torrent(
      json['torrent_id'] as int?,
      json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      json['quality'] == null
          ? null
          : Quality.fromJson(json['quality'] as Map<String, dynamic>),
      json['leechers'] as int?,
      json['seeders'] as int?,
      json['downloads'] as int?,
      json['total_size'] as int?,
      json['url'] as String?,
      json['uploaded_timestamp'] as int?,
      json['metadata'] == null
          ? null
          : TorrentMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      json['raw_base64_file'] as String?,
      json['hash'] as String?,
      json['magnet'] as String?,
    );

Map<String, dynamic> _$TorrentToJson(Torrent instance) => <String, dynamic>{
      'torrent_id': instance.torrentId,
      'episodes': instance.episodes,
      'quality': instance.quality,
      'leechers': instance.leechers,
      'seeders': instance.seeders,
      'downloads': instance.downloads,
      'total_size': instance.totalSize,
      'url': instance.url,
      'uploaded_timestamp': instance.uploadedTimestamp,
      'metadata': instance.metadata,
      'raw_base64_file': instance.rawBase64File,
      'hash': instance.hash,
      'magnet': instance.magnet,
    };
