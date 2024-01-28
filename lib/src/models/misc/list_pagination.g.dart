// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPagination<T> _$ListPaginationFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ListPagination<T>(
      json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      (json['list'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ListPaginationToJson<T>(
  ListPagination<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'list': instance.list.map(toJsonT).toList(),
    };
