import 'package:flutter/material.dart';
import 'package:flutter_startup/core/constants/app_router_strings.dart';
import 'package:flutter_startup/core/exceptions/route_exception.dart';
import 'package:flutter_startup/presentation/screens/home/home_screen.dart';


class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterStrings.home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen()
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}