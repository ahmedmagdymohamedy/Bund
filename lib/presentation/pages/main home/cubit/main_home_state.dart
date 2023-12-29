// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_home_cubit.dart';

class MainHomeState {
  int currentPageIndex;
  Widget currentBody;
  MainHomeState({
    this.currentPageIndex = 0,
    required this.currentBody,
  });

  MainHomeState copyWith({
    int? currentPageIndex,
    Widget? currentBody,
  }) {
    return MainHomeState(
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
      currentBody: currentBody ?? this.currentBody,
    );
  }
}
