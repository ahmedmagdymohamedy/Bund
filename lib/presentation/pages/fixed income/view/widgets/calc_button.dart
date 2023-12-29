// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bund/presentation/pages/fixed%20income/cubit/fixed_income_cubit.dart';
import 'package:flutter/material.dart';

import 'package:bund/core/resources/app_colors.dart';

class CalcButton extends StatefulWidget {
  final VoidCallback onTap;
  final String char;

  const CalcButton({
    Key? key,
    required this.onTap,
    required this.char,
  }) : super(key: key);

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  bool isTotorialShown = false;
  Timer? timer;

  static const incrementStartSpeed = 500;
  static const incrementMinimumSpeed = 170;
  int incrementSpeed = 0;
  bool isHold = false;

  @override
  void initState() {
    super.initState();
    incrementSpeed = incrementStartSpeed;
    longPressBehavire();
  }

  void checkTotorial(BuildContext context) {
    FixedIncomeCubit fixedIncomeCubit = FixedIncomeCubit.get(context);
    if (!fixedIncomeCubit.isTotorialShowedBefor) {
      setState(() {
        isTotorialShown = true;
      });
      fixedIncomeCubit.isTotorialShowedBefor = true;
    }
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  void longPressBehavire() async {
    while (mounted) {
      await Future.delayed(Duration(milliseconds: incrementSpeed));
      if (isHold) {
        widget.onTap();
        if (incrementSpeed > incrementMinimumSpeed) {
          incrementSpeed -= 70;
        }
      } else {
        incrementSpeed = incrementStartSpeed;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (isTotorialShown)
          Positioned(
            top: -1000,
            right: -1000,
            child: Container(
              height: 2000,
              width: 2000,
              color: Colors.black.withOpacity(0.2),
            ),
          ),
        GestureDetector(
          onLongPressStart: (details) {
            isHold = true;
          },
          onLongPressUp: () {
            isHold = false;
            FixedIncomeCubit.get(context).reCalcData();
          },
          onLongPressDown: (details) {
            widget.onTap();
            // checkTotorial(context);
          },
          onTapUp: (details) {
            FixedIncomeCubit.get(context).reCalcData();
          },
          child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.scaffold,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.body.withOpacity(0.2),
                    blurRadius: 3,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Text(
                widget.char,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  height: 1,
                  color: AppColors.primary,
                ),
              )

              // Center(
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 1),
              //     child: Icon(
              //       iconData,
              //     ),
              //   ),
              // ),
              ),
        ),
      ],
    );
  }
}
