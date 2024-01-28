// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrent_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TorrentUpdateEvent _$TorrentUpdateEventFromJson(Map<String, dynamic> json) =>
    TorrentUpdateEvent(
      json['id'] as int?,
      json['torrents'] == null
          ? null
          : Torrents.fromJson(json['torrents'] as Map<String, dynamic>),
      json['updated_torrent_id'] as int?,
      json['diff'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$TorrentUpdateEventToJson(TorrentUpdateEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'torrents': instance.torrents,
      'updated_torrent_id': instance.updatedTorrentId,
      'diff': instance.diff,
    };
