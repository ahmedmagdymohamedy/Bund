import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar AppAppBar(
  BuildContext context, {
  String? title,
  Widget? titleWidget,
  Widget? leading,
  List<Widget>? actions,
  VoidCallback? onClickBack,
  Color? backgroundColor,
  Color? forgroundColor,
  bool enableBackButton = true,
  Object? heroTag,
}) =>
    AppBar(
      backgroundColor: backgroundColor,
      foregroundColor: forgroundColor,
      title: titleWidget ?? (title != null ? Text(title) : null),
      leading: leading ??
          (enableBackButton
              ? Center(
                  child: IconButton(
                    onPressed: onClickBack ??
                        () {
                          Navigator.pop(context);
                        },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                )
              : null),
      actions: actions,
    );
