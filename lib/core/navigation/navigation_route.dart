import 'package:flutter/material.dart';
import 'package:homescreen_widget/core/navigation/constant/routest_constant.dart';
import 'package:homescreen_widget/features/home/features/home_page.dart';
import 'package:homescreen_widget/features/search/pages/search_page.dart';
import 'package:homescreen_widget/features/wordofday/pages/word_of_day_page.dart';

class NavigationRoute {
  static final NavigationRoute _shared = NavigationRoute._init();
  static NavigationRoute get shared => _shared;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case KRoute.SEARCH_PAGE:
        return _getRoute(SearchPage());

      case KRoute.WORDOFDAY_PAGE:
        return _getRoute(WordOfDayPage());

      case KRoute.HOME_PAGE:
        return _getRoute(HomePage());

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
