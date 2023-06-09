import 'package:flutter/widgets.dart';

class UserProfile {
  late String name, avatar_url, bio;
  late int followers, following, repositories;

  UserProfile({
    required this.name,
    required this.avatar_url,
    required this.bio,
    required this.followers,
    required this.following,
    required this.repositories,
  });

  UserProfile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bio = json['bio'];
    avatar_url = json['avatar_url'];
    followers = json['followers'];
    following = json['following'];
    repositories = json['public_repos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['bio'] = this.bio;
    data['avatar_url'] = this.avatar_url;
    data['followers'] = this.followers;
    data['following'] = this.following;
    data['public_repos'] = this.repositories;
    return data;
  }
}