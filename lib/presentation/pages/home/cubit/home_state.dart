// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

class HomeState {
  int bannerPageIndex;
  int bodyPageIndex;
  HomeState({
    required this.bannerPageIndex,
    required this.bodyPageIndex,
  });

  HomeState copyWith({
    int? bannerPageIndex,
    int? bodyPageIndex,
  }) {
    return HomeState(
      bannerPageIndex: bannerPageIndex ?? this.bannerPageIndex,
      bodyPageIndex: bodyPageIndex ?? this.bodyPageIndex,
    );
  }
}
