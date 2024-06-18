import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'routes.dart';
import 'second_screen.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.firstScreen:
        return MaterialPageRoute(
          builder: (context) => const FirstScreen(),
        );
      case RoutesName.secondScreen:
      var data = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) =>  SecondScreen(data: data),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
