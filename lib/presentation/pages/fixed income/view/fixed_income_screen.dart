// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bund/data/demo_data.dart';
import 'package:bund/presentation/pages/fixed%20income/view/widgets/bond_card.dart';
import 'package:bund/presentation/pages/fixed%20income/view/widgets/invest_cell.dart';
import 'package:bund/presentation/pages/fixed%20income/view/widgets/investment_calcorator.dart';
import 'package:bund/presentation/pages/fixed%20income/view/widgets/years_term_card.dart';
import 'package:bund/presentation/pages/main%20home/cubit/main_home_cubit.dart';
import 'package:bund/presentation/widgets/app_button.dart';
import 'package:bund/presentation/widgets/app_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bund/core/resources/app_colors.dart';
import 'package:bund/core/resources/app_strings.dart';
import 'package:bund/presentation/pages/fixed%20income/cubit/fixed_income_cubit.dart';
import 'package:bund/presentation/widgets/app_app_bar.dart';

class FixedIncomeScreen extends StatelessWidget {
  const FixedIncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FixedIncomeCubit(),
      child: BlocBuilder<FixedIncomeCubit, FixedIncomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppAppBar(context, title: AppStrings.Fixed_Income,
                onClickBack: () {
              try {
                MainHomeCubit.get(context).setPageIndex(context, 0);
              } catch (e) {
                Navigator.pop(context);
              }
            }),
            body: Stack(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text(
                        AppStrings.Fixed_Income_Portfolio,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.head,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        AppStrings.A_fixed_income_portfolio_consists,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.body,
                          height: 2,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${AppStrings.Annual_Yield_To_Maturity} ',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColors.lightBody,
                                ),
                              ),
                              const Icon(
                                Icons.info,
                                size: 20,
                                color: AppColors.lightBody,
                              )
                            ],
                          ),
                          const Text(
                            '6.81%',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 31,
                              color: AppColors.head,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      IvestCell(
                        firstTitle: AppStrings.Average_Rating,
                        firstValue: "AA",
                        secondTitle: AppStrings.Bonds,
                        secondValue: '20 ${AppStrings.Companies}',
                      ),
                      const SizedBox(height: 12),
                      Text(
                        AppStrings.Term_Types,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: AppColors.lightBody,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          YearsTermCard(
                            isSelected: false,
                            title: "3 ${AppStrings.Year_Term}",
                          ),
                          const SizedBox(width: 10),
                          YearsTermCard(
                            isSelected: false,
                            title: "5 ${AppStrings.Year_Term}",
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      AppSections(
                        lable: AppStrings.Investment_Calculator,
                        padding: EdgeInsets.zero,
                        child: const InvestmentCalcorator(),
                      ),
                      const SizedBox(height: 30),
                      AppSections(
                        lable: AppStrings.Bonds,
                        padding: EdgeInsets.zero,
                        child: Column(
                          children: [
                            ...DemoData.bonds.map(
                              (e) => Column(
                                children: [
                                  BondCard(bond: e),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 78),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: AppButton(
                      onPressed: () {},
                      disable: state.isLoadingCalcolatedData,
                      title: AppStrings.Create_Investment_Account,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
