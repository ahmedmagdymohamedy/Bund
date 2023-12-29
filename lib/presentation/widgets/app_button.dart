// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bund/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? width;
  final double? height;
  final bool disable;
  final Color? backgroundColor;
  final Color? forgroundColor;
  final TextStyle? style;
  const AppButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 56,
    this.disable = false,
    this.backgroundColor,
    this.forgroundColor,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              disable ? AppColors.lightBody : backgroundColor),
          foregroundColor: MaterialStateProperty.all(forgroundColor),
        ),
        onPressed: disable ? null : onPressed,
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}
