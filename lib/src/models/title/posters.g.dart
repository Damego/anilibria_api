// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Posters _$PostersFromJson(Map<String, dynamic> json) => Posters(
      json['small'] == null
          ? null
          : Poster.fromJson(json['small'] as Map<String, dynamic>),
      json['medium'] == null
          ? null
          : Poster.fromJson(json['medium'] as Map<String, dynamic>),
      json['original'] == null
          ? null
          : Poster.fromJson(json['original'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostersToJson(Posters instance) => <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'original': instance.original,
    };
