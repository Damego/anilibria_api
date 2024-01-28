import 'package:json_annotation/json_annotation.dart';
import 'pagination.dart';

part 'list_pagination.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ListPagination<T> {
  final Pagination? pagination;
  final List<T> list;

  ListPagination(this.pagination, this.list);

  factory ListPagination.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ListPaginationFromJson<T>(json, fromJsonT);
}
