// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistUpdateEvent _$PlaylistUpdateEventFromJson(Map<String, dynamic> json) =>
    PlaylistUpdateEvent(
      json['id'] as int?,
      json['player'] == null
          ? null
          : Player.fromJson(json['player'] as Map<String, dynamic>),
      json['updated_episode'] == null
          ? null
          : Episode.fromJson(json['updated_episode'] as Map<String, dynamic>),
      json['episode'] as int?,
      json['diff'] as Map<String, dynamic>?,
      json['reupload'] as bool?,
    );

Map<String, dynamic> _$PlaylistUpdateEventToJson(
        PlaylistUpdateEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'player': instance.player,
      'updated_episode': instance.updatedEpisode,
      'episode': instance.episode,
      'diff': instance.diff,
      'reupload': instance.isReupload,
    };
