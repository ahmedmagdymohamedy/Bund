import 'package:bund/app/app_theme.dart';
import 'package:bund/core/resources/app_routes.dart';
import 'package:bund/core/resources/app_strings.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // StatusBarUtils.transparentStutsBar();
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generator,
      theme: getAppTheme(context),
      initialRoute: AppRouter.home,
    );
  }
}
