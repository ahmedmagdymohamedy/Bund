// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bund/core/resources/app_assets.dart';
import 'package:bund/core/resources/app_colors.dart';
import 'package:bund/core/resources/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:bund/data/models/banner_item.dart';
import 'package:flutter_svg/svg.dart';

class BannerCard extends StatelessWidget {
  final BannerItem bannerItem;
  const BannerCard({
    Key? key,
    required this.bannerItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: 156,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.appName,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
              Text(
                bannerItem.name,
                style: const TextStyle(
                  fontSize: 23,
                  color: AppColors.gray,
                ),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.scaffold,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: () {},
                  child: Center(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.arrow_tow_ways,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          AppStrings.Start_Now,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            bannerItem.image,
          ),
        ],
      ),
    );
  }
}
