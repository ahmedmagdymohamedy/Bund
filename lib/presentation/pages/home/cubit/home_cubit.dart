import 'package:bund/core/managers/shared_preferences_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(HomeState(
          bannerPageIndex: SharedPreferencesManager.getLastPlanFocus() ?? 0,
          bodyPageIndex: SharedPreferencesManager.getLastPlanFocus() ?? 0,
        )) {
    startFocusToLastPlan();
  }

  static HomeCubit get(BuildContext context) =>
      BlocProvider.of<HomeCubit>(context);

  PageController? bannerPageController;
  PageController? bodyPageController;

  void startFocusToLastPlan() async {
    bannerPageController = PageController(
        viewportFraction: 0.98, initialPage: state.bannerPageIndex);
    bodyPageController = PageController(initialPage: state.bodyPageIndex);
  }

  void onBannerPageChanged(int index) {
    emit(state.copyWith(bannerPageIndex: index));
    if (state.bodyPageIndex != index) {
      bodyPageController!.animateToPage(
        index,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutQuad,
      );
    }
    SharedPreferencesManager.setLastPlanFocus(index);
  }

  void onBodyPageChanged(int index) {
    emit(state.copyWith(bodyPageIndex: index));
    if (state.bannerPageIndex != index) {
      bannerPageController!.animateToPage(
        index,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutQuad,
      );
    }
  }
}
