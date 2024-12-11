import 'package:flutter/material.dart';
import '../../../../core/router/router.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Signup form fields would go here
            ElevatedButton(
              onPressed: () {
                // Example navigation to feeds page after signup
                AppRouter.replaceWith(context, RouteNames.feeds);
              },
              child: Text('Create Account'),
            ),
            TextButton(
              onPressed: () {
                // Navigate back to login page
                Navigator.pop(context);
              },
              child: Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
