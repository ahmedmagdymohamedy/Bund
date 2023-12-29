import 'package:bund/core/resources/app_assets.dart';
import 'package:bund/core/resources/app_colors.dart';
import 'package:bund/core/resources/app_routes.dart';
import 'package:bund/core/resources/app_strings.dart';
import 'package:bund/core/utils/utils.dart';
import 'package:bund/data/demo_data.dart';
import 'package:bund/presentation/pages/home/cubit/home_cubit.dart';
import 'package:bund/presentation/pages/home/view/widgets/banners_solider.dart';
import 'package:bund/presentation/widgets/app_app_bar.dart';
import 'package:bund/presentation/widgets/app_section.dart';
import 'package:bund/presentation/widgets/circle_container.dart';
import 'package:bund/presentation/widgets/options_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppAppBar(
              context,
              titleWidget: Row(
                children: [
                  CircleContainer(
                    centerChild: SvgPicture.asset(AppAssets.home_person),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.Good_Morning,
                          style: const TextStyle(
                            fontSize: 10,
                            color: AppColors.body,
                          ),
                        ),
                        Text(
                          DemoData.userName,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              actions: [
                CircleContainer(
                  centerChild: SvgPicture.asset(AppAssets.notification),
                ),
                const SizedBox(width: 16),
              ],
              enableBackButton: false,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  const BannersSolider(),
                  const SizedBox(height: 14),
                  SizedBox(
                    height: 500,
                    child: PageView.builder(
                      controller: HomeCubit.get(context).bodyPageController,
                      clipBehavior: Clip.none,
                      onPageChanged: HomeCubit.get(context).onBodyPageChanged,
                      itemCount: 4,
                      itemBuilder: (context, index) => Column(
                        children: [
                          AppSections(
                            lable: AppStrings.Conditions,
                            child: Row(
                              children: [
                                Expanded(
                                  child: OptionCard(
                                    icon: AppAssets.No_Minimum_Deposit,
                                    title: AppStrings.No_Minimum_Deposit,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, AppRouter.fixedIncome);
                                    },
                                  ),
                                ),
                                const SizedBox(width: 13),
                                Expanded(
                                  child: OptionCard(
                                    icon: AppAssets.Swiss_Bank_Account,
                                    title: AppStrings.Month_Paid_Annually,
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, AppRouter.fixedIncome);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          AppSections(
                            lable: AppStrings.What_You_Get,
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    Utils.getHowManyCardOnRow(context),
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                              ),
                              itemCount: DemoData.features.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => OptionCard(
                                icon: DemoData.features[index].icon,
                                title: DemoData.features[index].title,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRouter.fixedIncome);
                                },
                                isDisable: !DemoData.features[index].enable,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
