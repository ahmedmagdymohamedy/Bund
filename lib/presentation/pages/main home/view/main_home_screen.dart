import 'package:bund/core/resources/app_assets.dart';
import 'package:bund/core/resources/app_colors.dart';
import 'package:bund/core/resources/app_strings.dart';
import 'package:bund/core/utils/status_bar.utils.dart';
import 'package:bund/presentation/pages/main%20home/cubit/main_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StatusBarUtils.darkStutsBarIcons();
    return BlocProvider(
      create: (context) => MainHomeCubit(),
      child: BlocBuilder<MainHomeCubit, MainHomeState>(
        builder: (context, state) {
          MainHomeCubit pageController = MainHomeCubit.get(context);
          return Scaffold(
            body: PageView.builder(
              itemCount: MainHomeCubit.homePages.length,
              controller: pageController.pageController,
              itemBuilder: (context, index) => MainHomeCubit.homePages[index],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      AppAssets.home,
                    ),
                  ),
                  label: AppStrings.Home,
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 9),
                    child: SvgPicture.asset(
                      AppAssets.investment,
                      color: AppColors.lightGray,
                    ),
                  ),
                  label: AppStrings.Investment,
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      AppAssets.chat,
                      color: AppColors.lightGray,
                    ),
                  ),
                  label: AppStrings.Chat,
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      AppAssets.Swiss_Bank_Account,
                      color: AppColors.lightGray,
                    ),
                  ),
                  label: AppStrings.Integration,
                ),
              ],
              onTap: (i) => MainHomeCubit.get(context).setPageIndex(context, i),
              currentIndex: 0,
            ),
          );
        },
      ),
    );
  }
}
