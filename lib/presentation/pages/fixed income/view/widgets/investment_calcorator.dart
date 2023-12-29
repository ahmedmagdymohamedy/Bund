// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bund/core/utils/utils.dart';
import 'package:bund/presentation/pages/fixed%20income/cubit/fixed_income_cubit.dart';
import 'package:bund/presentation/pages/fixed%20income/view/widgets/calc_button.dart';
import 'package:bund/presentation/pages/fixed%20income/view/widgets/invest_cell.dart';
import 'package:bund/presentation/pages/fixed%20income/view/widgets/years_term_card.dart';
import 'package:flutter/material.dart';

import 'package:bund/core/resources/app_colors.dart';
import 'package:bund/core/resources/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvestmentCalcorator extends StatelessWidget {
  const InvestmentCalcorator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FixedIncomeCubit, FixedIncomeState>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    AppStrings.Investment_Amount,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.lightBody,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CalcButton(
                        onTap: FixedIncomeCubit.get(context).onDecrease,
                        char: '-',
                      ),
                      Expanded(
                        child: Text(
                          '\$${Utils.toCurrency(state.investAmount)}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      CalcButton(
                        onTap: FixedIncomeCubit.get(context).onIncrease,
                        char: '+',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.green.withOpacity(0.1),
                    ),
                    child: const Text(
                      "6.81% YTM",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      YearsTermCard(
                        title: "3 ${AppStrings.Year_Term}",
                        backgroundColor: AppColors.scaffold,
                        isSelected: state.selectedYearTerm == 3,
                        onTap: () =>
                            FixedIncomeCubit.get(context).onChangeYearTerm(3),
                      ),
                      const SizedBox(width: 10),
                      YearsTermCard(
                        title: "5 ${AppStrings.Year_Term}",
                        backgroundColor: AppColors.scaffold,
                        isSelected: state.selectedYearTerm == 5,
                        onTap: () =>
                            FixedIncomeCubit.get(context).onChangeYearTerm(5),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Opacity(
                    opacity: state.isLoadingCalcolatedData ? 0.2 : 1,
                    child: Column(
                      children: [
                        IvestCell(
                          firstTitle: AppStrings.Capital_At_Maturity,
                          firstValue:
                              "\$${Utils.toCurrency(state.capitalAtMaturity)}",
                          secondTitle: AppStrings.Total_Interest,
                          secondValue:
                              "\$${Utils.toCurrency(state.totalInterest)}",
                        ),
                        const SizedBox(height: 14),
                        IvestCell(
                          firstTitle: AppStrings.Annual_Interest,
                          firstValue:
                              "\$${Utils.toCurrency(state.annualInterest)}",
                          secondTitle: AppStrings.Average_Maturity_Date,
                          secondValue: "${state.averageMaturityDate}",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            if (state.isLoadingCalcolatedData)
              const Align(
                alignment: Alignment.center,
                child: LinearProgressIndicator(),
              ),
          ],
        );
      },
    );
  }
}
