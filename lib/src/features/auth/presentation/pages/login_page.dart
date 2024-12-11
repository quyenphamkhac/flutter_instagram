import 'package:flutter/material.dart';
import '../../../../core/router/router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Login form fields would go here
            ElevatedButton(
              onPressed: () {
                // Example navigation to feeds page after login
                AppRouter.replaceWith(context, RouteNames.feeds);
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to signup page
                AppRouter.navigateTo(context, RouteNames.signup);
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
