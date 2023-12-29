// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CircleContainer extends StatelessWidget {
  double? width;
  Color? color;
  Widget? centerChild;
  CircleContainer({
    Key? key,
    this.width,
    this.color,
    this.centerChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 40,
      height: width ?? 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.white,
      ),
      child: Center(
        child: centerChild,
      ),
    );
  }
}
