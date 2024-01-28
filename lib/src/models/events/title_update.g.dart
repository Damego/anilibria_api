// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleUpdateEvent _$TitleUpdateEventFromJson(Map<String, dynamic> json) =>
    TitleUpdateEvent(
      json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      json['diff'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$TitleUpdateEventToJson(TitleUpdateEvent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'diff': instance.diff,
    };
