import 'package:bund/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class IvestCell extends StatelessWidget {
  final String firstTitle;
  final String firstValue;
  final String secondTitle;
  final String secondValue;
  const IvestCell({
    Key? key,
    required this.firstTitle,
    required this.firstValue,
    required this.secondTitle,
    required this.secondValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColors.lightBody,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              firstValue,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: AppColors.head,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColors.lightBody,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              secondValue,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: AppColors.head,
              ),
            ),
          ],
        )
      ],
    );
  }
}
