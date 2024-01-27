// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_franchise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleFranchise _$TitleFranchiseFromJson(Map<String, dynamic> json) =>
    TitleFranchise(
      json['franchise'] == null
          ? null
          : Franchise.fromJson(json['franchise'] as Map<String, dynamic>),
      (json['releases'] as List<dynamic>?)
          ?.map((e) => FranchiseRelease.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TitleFranchiseToJson(TitleFranchise instance) =>
    <String, dynamic>{
      'franchise': instance.franchise,
      'releases': instance.releases,
    };
