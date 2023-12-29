import 'package:bund/core/resources/app_strings.dart';
import 'package:bund/presentation/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        context,
        title: AppStrings.Investment,
        enableBackButton: false,
      ),
    );
  }
}
