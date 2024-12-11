import 'package:flutter/material.dart';

// Pages
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/sign_up_page.dart';
import '../../features/feeds/presentation/pages/feeds_page.dart';

// Route Names
class RouteNames {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String feeds = '/feeds';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => LoginPage());

      case RouteNames.signup:
        return MaterialPageRoute(builder: (_) => SignUpPage());

      case RouteNames.feeds:
        return MaterialPageRoute(builder: (_) => FeedsPage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  // Optional: Helper method for named navigation
  static void navigateTo(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  // Optional: Helper method for replacing current route
  static void replaceWith(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }
}
