import 'package:bund/core/managers/shared_preferences_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fixed_income_state.dart';

class FixedIncomeCubit extends Cubit<FixedIncomeState> {
  FixedIncomeCubit()
      : super(FixedIncomeState(
          investAmount:
              SharedPreferencesManager.getLastInvestment()?.toDouble() ?? 10000,
          selectedYearTerm: SharedPreferencesManager.getLastYearTerm() ?? 3,
        )) {
    reCalcData();
  }

  static FixedIncomeCubit get(BuildContext context) =>
      BlocProvider.of<FixedIncomeCubit>(context);

  bool isTotorialShowedBefor = false;
  static const double _YTM = 6.81;

  // +
  // if user tring to increase investment amount
  void onIncrease() {
    int increment = 250;
    if (state.investAmount >= 1000) {
      increment = 1000;
    }
    if (state.investAmount >= 10000) {
      increment = 10000;
    }
    emit(
      state.copyWith(investAmount: state.investAmount + increment),
    );
  }

  // -
  // if user tring to decrease investment amount
  void onDecrease() async {
    if (state.investAmount <= 250) return;
    int increment = 10000;
    if (state.investAmount <= 10000) {
      increment = 1000;
    }
    if (state.investAmount <= 1000) {
      increment = 250;
    }
    emit(
      state.copyWith(investAmount: state.investAmount - increment),
    );
  }

  // change selected year term
  void onChangeYearTerm(int years) {
    emit(state.copyWith(selectedYearTerm: years));
    reCalcData();
  }

  void reCalcData() async {
    // save last invest ammount
    SharedPreferencesManager.setLastInvestment(state.investAmount.toInt());
    SharedPreferencesManager.setLastYearTerm(state.selectedYearTerm);

    emit(state.copyWith(isLoadingCalcolatedData: true));
    await Future.delayed(const Duration(milliseconds: 1000));
    emit(state.copyWith(isLoadingCalcolatedData: false));
    // Capital At Maturity calcolations
    state.capitalAtMaturity =
        (_YTM * state.selectedYearTerm) + state.investAmount;

    // Total Interest calcolations
    state.totalInterest = _YTM * state.selectedYearTerm * state.investAmount;

    // Total Annual Interest calcolations
    state.annualInterest = _YTM * state.investAmount;

    // Total Average Maturity Date calcolations
    state.averageMaturityDate = DateTime.now().year + state.selectedYearTerm;

    emit(state.copyWith());
  }
}
