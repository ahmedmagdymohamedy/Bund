// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bund/core/resources/app_colors.dart';

// ignore: must_be_immutable
class YearsTermCard extends StatelessWidget {
  final String title;
  bool isSelected;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  YearsTermCard({
    Key? key,
    required this.title,
    required this.isSelected,
    this.onTap,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        height: 26,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: backgroundColor ?? Colors.white,
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : AppColors.primary.withOpacity(0.1),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: isSelected ? AppColors.primary : AppColors.lightBody,
            ),
          ),
        ),
      ),
    );
  }
}
