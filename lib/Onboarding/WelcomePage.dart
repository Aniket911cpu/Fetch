import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Fetch',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Your one-stop solution for managing apps, media, and files.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                PageController controller = PageController();
                controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}