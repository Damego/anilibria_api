import 'package:json_annotation/json_annotation.dart';
import 'package:anilibria_api/src/models/title/franchise.dart';
import 'package:anilibria_api/src/models/title/franchise_release.dart';

part 'title_franchise.g.dart';

@JsonSerializable()
class TitleFranchise {
  final Franchise? franchise;
  final List<FranchiseRelease>? releases;

  TitleFranchise(this.franchise, this.releases);

  factory TitleFranchise.fromJson(Map<String, dynamic> json) =>
      _$TitleFranchiseFromJson(json);
}
