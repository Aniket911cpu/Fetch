import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomePage.dart';
import 'Onboarding/OnboardingPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstRun = prefs.getBool('isFirstRun') ?? true;

  runApp(MyApp(isFirstRun: isFirstRun));
}

class MyApp extends StatelessWidget {
  final bool isFirstRun;
  final ValueNotifier<ThemeMode> _themeMode = ValueNotifier(ThemeMode.light);

  MyApp({required this.isFirstRun});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _themeMode,
      builder: (context, currentMode, child) {
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          home: isFirstRun ? OnboardingPage() : HomePage(themeMode: _themeMode),
        );
      },
    );
  }
}