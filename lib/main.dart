import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_startup/core/constants/app_router_strings.dart';
import 'package:flutter_startup/core/constants/strings.dart';
import 'package:flutter_startup/core/router/app_router.dart';
import 'package:flutter_startup/core/themes/app_theme.dart';
import 'logic/debug/app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: AppTheme.lightTheme,
      initialRoute: AppRouterStrings.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
