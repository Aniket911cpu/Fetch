import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primary,
        hintColor: AppColors.accent,
        scaffoldBackgroundColor: AppColors.background,
        cardColor: AppColors.error,
        appBarTheme: const AppBarTheme(
          color: AppColors.primary,
          iconTheme: IconThemeData(color: AppColors.onPrimary),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.accent,
          foregroundColor: AppColors.onPrimary,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.onBackground),
          bodyMedium: TextStyle(color: AppColors.onBackground),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.accent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const HomePage(),
    );
  }
}