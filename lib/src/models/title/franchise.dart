import 'package:json_annotation/json_annotation.dart';

part 'franchise.g.dart';

@JsonSerializable()
class Franchise {
  String? id;
  String? name;

  Franchise(this.id, this.name);

  factory Franchise.fromJson(Map<String, dynamic> json) =>
      _$FranchiseFromJson(json);
}
