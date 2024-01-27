import 'package:json_annotation/json_annotation.dart';

part 'description.g.dart';

@JsonSerializable()
class Description {
  final String? html;
  @JsonKey(name: 'no_view_order')
  final String? noViewOrder;
  final String? plain;

  Description(this.html, this.noViewOrder, this.plain);

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}
