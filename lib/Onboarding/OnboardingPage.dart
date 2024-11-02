import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../HomePage.dart';
import 'WelcomePage.dart';
import 'avatar.dart';
import 'signin.dart';

class OnboardingPage extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          WelcomePage(),
          AvatarSelectionPage(),
          SignInPage(onComplete: _completeOnboarding),
        ],
      ),
    );
  }

  void _completeOnboarding(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstRun', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage(themeMode: ValueNotifier(ThemeMode.light))),
    );
  }
}