// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      json['current_page'] as int,
      json['pages'] as int,
      json['items_per_page'] as int,
      json['total_items'] as int,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'pages': instance.pages,
      'items_per_page': instance.itemsPerPage,
      'total_items': instance.totalItems,
    };
