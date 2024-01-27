import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String? login;
  final String? nickname;
  final String? email;
  @JsonKey(name: "avatar_original")
  final String? avatarOriginal;
  @JsonKey(name: "avatar_thumbnail")
  final String? avatarThumbnail;
  @JsonKey(name: "vk_id")
  final String? vkId;
  @JsonKey(name: "patreon_id")
  final String? patreonId;

  User(this.login, this.nickname, this.email, this.avatarOriginal,
      this.avatarThumbnail, this.vkId, this.patreonId);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
