// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'franchise_release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FranchiseRelease _$FranchiseReleaseFromJson(Map<String, dynamic> json) =>
    FranchiseRelease(
      json['id'] as int?,
      json['code'] as String?,
      json['names'] == null
          ? null
          : Names.fromJson(json['names'] as Map<String, dynamic>),
      json['ordinal'] as int?,
    );

Map<String, dynamic> _$FranchiseReleaseToJson(FranchiseRelease instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'names': instance.names,
      'ordinal': instance.ordinal,
    };
