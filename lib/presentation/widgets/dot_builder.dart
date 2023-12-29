import 'package:bund/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class DotsSolider extends StatelessWidget {
  final int count;
  final int currentIndex;
  const DotsSolider({
    Key? key,
    required this.count,
    required this.currentIndex,
  }) : super(key: key);

  List<Widget> getDots() {
    List<Widget> res = [];

    for (var i = 0; i < count; i++) {
      res.add(
        Container(
          margin: EdgeInsetsDirectional.only(end: i == count - 1 ? 0 : 5),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: currentIndex == i ? AppColors.primary : AppColors.lightGray,
          ),
        ),
      );
    }

    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: getDots(),
    );
  }
}
