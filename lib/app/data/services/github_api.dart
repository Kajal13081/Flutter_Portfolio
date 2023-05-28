import 'package:dio/dio.dart';
import 'package:portfolio_app/app/data/dio_client.dart';
import 'package:portfolio_app/app/data/endpoints.dart';
import 'package:portfolio_app/app/data/models/repos.dart';
import 'package:portfolio_app/app/data/models/user_profile.dart';

class GithubApi {

  late String username;

  Future<UserProfile> getUserProfile({username}) async {
    try {
      final response = await Dio().get(
          'https://api.github.com${Endpoints.usersProfile}/$username');
      print('hello');
      return UserProfile.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }


  Future<List<Repos>> getRepos({required String username}) async {
    try {
      final response = await Dio().get(
          'https://api.github.com${Endpoints.usersProfile}/$username/${Endpoints
              .repos}');
      print('hello');
      final data = response.data;
      return List<Repos>.from(data.map((item) => Repos.fromMap(item)));
    } catch (e) {
      throw e;
    }
  }
}