import 'package:json_annotation/json_annotation.dart';
import 'names.dart';

part 'franchise_release.g.dart';

@JsonSerializable()
class FranchiseRelease {
  final int? id;
  final String? code;
  final Names? names;
  final int? ordinal;

  FranchiseRelease(this.id, this.code, this.names, this.ordinal);

  factory FranchiseRelease.fromJson(Map<String, dynamic> json) =>
      _$FranchiseReleaseFromJson(json);
}
