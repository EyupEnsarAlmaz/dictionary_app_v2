import 'package:flutter/material.dart';

class NavigationRoute {
  static final NavigationRoute _shared = NavigationRoute._init();
  static NavigationRoute get shared => _shared;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: textWidget,
          ),
        );
    }
  }

  Widget get textWidget => Text("Not Found.");

  PageRoute _getRoute(Widget page) => MaterialPageRoute(
        builder: (context) => page,
      );
}
