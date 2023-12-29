import 'package:bund/core/resources/app_strings.dart';
import 'package:bund/presentation/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        context,
        title: AppStrings.Chat,
        enableBackButton: false,
      ),
    );
  }
}
