import 'package:dio/dio.dart';
import 'package:portfolio_app/app/data/dio_client.dart';
import 'package:portfolio_app/app/data/endpoints.dart';
import 'package:portfolio_app/app/data/models/repos.dart';
import 'package:portfolio_app/app/data/models/user_profile.dart';

class GithubApi {

  Future<UserProfile> getUserProfile({required String username}) async {
    try {
      final response = await Dio().get('${Endpoints.usersProfile}/$username');
      print('hello');
      return UserProfile.fromJson(response as Map<String, dynamic>);

    } catch (e) {
      print('hello');
      throw e;
    }
  }


// Future<List<Repos>> getRepos({required String username}) async {
  //   try {
  //     final List response = await _client
  //         .get('${Endpoints.usersProfile}/$username/${Endpoints.repos}');
  //
  //     return response.map((item) => Repos.fromMap(item)).toList();
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}