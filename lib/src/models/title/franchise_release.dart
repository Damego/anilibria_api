import 'package:json_annotation/json_annotation.dart';
import 'names.dart';

part 'franchise_release.g.dart';

@JsonSerializable()
class FranchiseRelease {
  int? id;
  String? code;
  Names? names;
  int? ordinal;

  FranchiseRelease(this.id, this.code, this.names, this.ordinal);

  factory FranchiseRelease.fromJson(Map<String, dynamic> json) =>
      _$FranchiseReleaseFromJson(json);
}
