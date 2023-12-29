import 'package:bund/core/resources/app_routes.dart';
import 'package:bund/presentation/pages/Home/view/home_screen.dart';
import 'package:bund/presentation/pages/chat/view/chat_screen.dart';
import 'package:bund/presentation/pages/fixed%20income/view/fixed_income_screen.dart';
import 'package:bund/presentation/pages/investment/view/investment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_home_state.dart';

class MainHomeCubit extends Cubit<MainHomeState> {
  MainHomeCubit() : super(MainHomeState(currentBody: homePages[0]));

  static MainHomeCubit get(BuildContext context) =>
      BlocProvider.of<MainHomeCubit>(context);

  PageController pageController = PageController();

  static List<Widget> homePages = [
    const HomeScreen(),
    const InvestmentScreen(),
    const ChatScreen(),
    const FixedIncomeScreen(),
  ];

  void setPageIndex(BuildContext context, int pageIndex) {
    if (pageIndex == 3) {
      Navigator.pushNamed(context, AppRouter.fixedIncome);
      return;
    }
    pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOutQuart,
    );
    emit(state.copyWith(
      currentPageIndex: pageIndex,
      currentBody: homePages[pageIndex],
    ));
  }
}
