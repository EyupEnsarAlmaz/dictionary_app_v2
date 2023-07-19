import 'package:flutter/material.dart';
import 'package:homescreen_widget/core/navigation/constant/routest_constant.dart';
import 'package:homescreen_widget/core/navigation/navigation_service.dart';
import 'package:homescreen_widget/features/search/presentation/pages/widget/background_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _navigator = NavigationService.shared;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomBackground(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 130, 71, 130)),
                    height: 300,
                    width: 300,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: InkWell(
                            onTap: () {
                              _navigator.navigateTo(path: KRoute.SEARCH_PAGE);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 50,
                              width: 250,
                              child: Center(child: Text("Search Text")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: InkWell(
                            onTap: () {
                              _navigator.navigateTo(
                                  path: KRoute.WORDOFDAY_PAGE);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 50,
                              width: 250,
                              child: Center(child: Text("WordOfDay")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            height: 50,
                            width: 250,
                            child: Center(child: Text("Recent Search")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            height: 50,
                            width: 250,
                            child: Center(child: Text("Favorite Words")),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            onTap: () {}));
  }
}
