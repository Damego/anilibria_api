import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? login;
  String? nickname;
  String? email;
  @JsonKey(name: "avatar_original")
  String? avatarOriginal;
  @JsonKey(name: "avatar_thumbnail")
  String? avatarThumbnail;
  @JsonKey(name: "vk_id")
  String? vkId;
  @JsonKey(name: "patreon_id")
  String? patreonId;

  User(this.login, this.nickname, this.email, this.avatarOriginal,
      this.avatarThumbnail, this.vkId, this.patreonId);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
