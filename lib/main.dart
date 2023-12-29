import 'package:bund/app/app.dart';
import 'package:bund/core/managers/shared_preferences_manager.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.init();

  runApp(
    const MyApp(),
  );
}
