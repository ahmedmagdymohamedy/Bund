// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'fixed_income_cubit.dart';

class FixedIncomeState {
  double investAmount;

  int selectedYearTerm;

  bool isLoadingCalcolatedData;

  double capitalAtMaturity;
  double totalInterest;
  double annualInterest;
  int averageMaturityDate;

  FixedIncomeState({
    required this.investAmount,
    required this.selectedYearTerm,
    this.isLoadingCalcolatedData = false,
    this.capitalAtMaturity = 0,
    this.totalInterest = 0,
    this.annualInterest = 0,
    this.averageMaturityDate = 0,
  });

  FixedIncomeState copyWith({
    double? investAmount,
    int? selectedYearTerm,
    bool? isLoadingCalcolatedData,
    double? capitalAtMaturity,
    double? totalInterest,
    double? annualInterest,
    int? averageMaturityDate,
  }) {
    return FixedIncomeState(
      investAmount: investAmount ?? this.investAmount,
      selectedYearTerm: selectedYearTerm ?? this.selectedYearTerm,
      isLoadingCalcolatedData:
          isLoadingCalcolatedData ?? this.isLoadingCalcolatedData,
      capitalAtMaturity: capitalAtMaturity ?? this.capitalAtMaturity,
      totalInterest: totalInterest ?? this.totalInterest,
      annualInterest: annualInterest ?? this.annualInterest,
      averageMaturityDate: averageMaturityDate ?? this.averageMaturityDate,
    );
  }
}
