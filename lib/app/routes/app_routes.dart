// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/dashboard.dart';
import 'package:portfolio_app/main.dart';
import 'package:portfolio_app/user_details_screen.dart';

class AppRoutes{
  static const String home = '/';
  static const String user_details = '/user-details';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _buildRoute(Example(), settings);
      case user_details:
        return _buildRoute(UserDetailScreen(), settings);

      default:
        return _buildRoute(Scaffold(), settings);
    }
  }

    static _buildRoute(Widget widget, RouteSettings settings) {
      return MaterialPageRoute(builder: (context) => widget, settings: settings);
    }
  }
