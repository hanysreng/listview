
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile(
{
String? email,
String? first_name,
String? last_name,
String? avatar,

   }) = _UserProfile;
   factory UserProfile.fromJson(Map<String, dynamic> json)=>
   _$UserProfileFromJson(json);
}
