// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:bund/core/resources/app_colors.dart';

class OptionCard extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool isDisable;
  const OptionCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isDisable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable ? null : onTap,
      borderRadius: BorderRadius.circular(6),
      child: Opacity(
        opacity: isDisable ? 0.1 : 1,
        child: Container(
          height: 90,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                icon,
                color: AppColors.primary.withOpacity(0.4),
              ),
              const Spacer(),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.body.withOpacity(0.6),
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
