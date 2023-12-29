import 'package:bund/presentation/pages/fixed%20income/view/fixed_income_screen.dart';
import 'package:bund/presentation/pages/main%20home/view/main_home_screen.dart';
import 'package:bund/presentation/pages/page%20not%20found/page_not_found_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String home = "home";
  static const String fixedIncome = "fixedIncome";
  // static const String home = "home";

  static MaterialPageRoute generator(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const MainHomeScreen(),
        );

      case fixedIncome:
        return MaterialPageRoute(
          builder: (_) => const FixedIncomeScreen(),
        );

      default:
        return MaterialPageRoute(builder: (_) => const PageNotFoundScreen());
    }
  }
}
