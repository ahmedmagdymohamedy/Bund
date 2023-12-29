// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bund/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:bund/data/models/bond.dart';

class BondCard extends StatelessWidget {
  final Bond bond;
  const BondCard({
    Key? key,
    required this.bond,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.scaffold,
            ),
            child: Padding(
              padding: bond.havePadding
                  ? const EdgeInsets.all(8.0)
                  : EdgeInsets.zero,
              child: Image.network(
                bond.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bond.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Text(
                  bond.rate,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Text(
            bond.investPercentage,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.green,
            ),
          )
        ],
      ),
    );
  }
}
