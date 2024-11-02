import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final Function(BuildContext) onComplete;

  SignInPage({required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Enter Username'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign in as guest
                onComplete(context);
              },
              child: Text('Sign In as Guest'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign in with Google
                onComplete(context);
              },
              child: Text('Sign In with Google'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign in with Facebook
                onComplete(context);
              },
              child: Text('Sign In with Facebook'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign in with X
                onComplete(context);
              },
              child: Text('Sign In with X'),
            ),
          ],
        ),
      ),
    );
  }
}