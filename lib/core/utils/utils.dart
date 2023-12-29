import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utils {
  static int getHowManyCardOnRow(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    const double defultCardWidth = 106;
    return (width / defultCardWidth).floor();
  }

  static String toCurrency(dynamic price, {int decimalDigits = 0}) {
    final formatCurrency =
        NumberFormat.simpleCurrency(name: '', decimalDigits: decimalDigits);
    return formatCurrency.format(price);
  }
}
