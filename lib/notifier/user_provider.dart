import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio_app/app/data/exceptions.dart';
import 'package:portfolio_app/app/data/models/user_profile.dart';
import 'package:portfolio_app/app/data/services/github_api.dart';
import 'package:portfolio_app/app/routes/app_routes.dart';

class UserProvider extends ChangeNotifier{

  GithubApi _githubApi = GithubApi();

  bool isLoading = false;

  late UserProfile _user;
  UserProfile get user => _user;

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future<void> getUser({required String username, required BuildContext ctx}) async {
    setLoading(true);
    try {
      final UserProfile response =
      await _githubApi.getUserProfile(username: username);
      _user = response;

      setLoading(false);
      Navigator.of(ctx).pushNamed(AppRoutes.user_details);
    } catch (e) {
      if (e is DioError) {
        final errorMessage = DioExceptions.fromDioError(e).toString();
        print(errorMessage);
        setLoading(false);
      }
    }
  }

}