import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

@JsonSerializable()
class Pagination {
  @JsonKey(name: "current_page")
  final int currentPage;
  final int pages;
  @JsonKey(name: "items_per_page")
  final int itemsPerPage;
  @JsonKey(name: "total_items")
  final int totalItems;

  Pagination(this.currentPage, this.pages, this.itemsPerPage, this.totalItems);

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
