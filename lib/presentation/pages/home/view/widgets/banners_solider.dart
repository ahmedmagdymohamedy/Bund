import 'package:bund/data/demo_data.dart';
import 'package:bund/presentation/pages/home/cubit/home_cubit.dart';
import 'package:bund/presentation/pages/home/view/widgets/banner_card.dart';
import 'package:bund/presentation/widgets/dot_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BannersSolider extends StatelessWidget {
  const BannersSolider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              height: 156,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 8,
                  end: 18,
                ),
                child: PageView.builder(
                  controller: HomeCubit.get(context).bannerPageController,
                  clipBehavior: Clip.none,
                  onPageChanged: HomeCubit.get(context).onBannerPageChanged,
                  allowImplicitScrolling: true,
                  itemCount: DemoData.bannerItems.length,
                  itemBuilder: (context, index) => BannerCard(
                    bannerItem: DemoData.bannerItems[index],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            DotsSolider(
              count: 4,
              currentIndex: state.bannerPageIndex,
            ),
          ],
        );
      },
    );
  }
}
