import 'package:shared_preferences/shared_preferences.dart';

const String _lastInvestmentKey = "lastInvestment";
const String _lastPlanFocus = "lastPlanFocus";
const String _lastYearTerm = "lastYearTerm";

class SharedPreferencesManager {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Last Investment
  static Future<void> setLastInvestment(int val) async {
    await _prefs.setInt(_lastInvestmentKey, val);
  }

  static int? getLastInvestment() {
    return _prefs.getInt(_lastInvestmentKey);
  }

  static Future<bool> removeLastInvestment() async {
    return await _prefs.remove(_lastInvestmentKey);
  }

  // Last Plan Focus
  static Future<void> setLastPlanFocus(int val) async {
    await _prefs.setInt(_lastPlanFocus, val);
  }

  static int? getLastPlanFocus() {
    return _prefs.getInt(_lastPlanFocus);
  }

  static Future<bool> removeLastPlanFocus() async {
    return await _prefs.remove(_lastPlanFocus);
  }

  // Last Year Term
  static Future<void> setLastYearTerm(int val) async {
    await _prefs.setInt(_lastYearTerm, val);
  }

  static int? getLastYearTerm() {
    return _prefs.getInt(_lastYearTerm);
  }

  static Future<bool> removeLastYearTerm() async {
    return await _prefs.remove(_lastYearTerm);
  }
}
