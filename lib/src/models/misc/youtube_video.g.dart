// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YouTubeVideo _$YouTubeVideoFromJson(Map<String, dynamic> json) => YouTubeVideo(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
      json['youtubeId'] as String?,
      json['timestamp'] as int?,
      json['comments'] as int?,
      json['views'] as int?,
    );

Map<String, dynamic> _$YouTubeVideoToJson(YouTubeVideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'youtubeId': instance.youtubeId,
      'timestamp': instance.timestamp,
      'comments': instance.comments,
      'views': instance.views,
    };
