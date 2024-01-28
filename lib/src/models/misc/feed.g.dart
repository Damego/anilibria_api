// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      json['youtube'] == null
          ? null
          : YouTubeVideo.fromJson(json['youtube'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'title': instance.title,
      'youtube': instance.youtube,
    };
