// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['login'] as String?,
      json['nickname'] as String?,
      json['email'] as String?,
      json['avatar_original'] as String?,
      json['avatar_thumbnail'] as String?,
      json['vk_id'] as String?,
      json['patreon_id'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'login': instance.login,
      'nickname': instance.nickname,
      'email': instance.email,
      'avatar_original': instance.avatarOriginal,
      'avatar_thumbnail': instance.avatarThumbnail,
      'vk_id': instance.vkId,
      'patreon_id': instance.patreonId,
    };
