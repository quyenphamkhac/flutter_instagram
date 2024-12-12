import 'package:flutter/material.dart';
import 'package:flutter_instagram/src/core/router/router.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feeds'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigate back to login page, removing all previous routes
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteNames.login, (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to Feeds Page'),
      ),
    );
  }
}
