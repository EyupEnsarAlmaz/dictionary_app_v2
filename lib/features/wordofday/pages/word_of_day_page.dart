import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:home_widget/home_widget.dart';
import 'package:homescreen_widget/core/companents/button/bloc2/bloc/tabbar_bloc.dart';
import 'package:homescreen_widget/core/extantion/context_extantion.dart';
import 'package:homescreen_widget/core/navigation/constant/routest_constant.dart';
import 'package:homescreen_widget/core/navigation/contract/base_navigation_service.dart';
import 'package:homescreen_widget/core/navigation/navigation_service.dart';
import 'package:homescreen_widget/data/repositories/local_word_repositories.dart';
import 'package:homescreen_widget/features/search/presentation/pages/bloc/bloc/word_bloc.dart';
import 'package:homescreen_widget/features/search/presentation/pages/widget/background_widget.dart';

import '../../../data/models/words/remote_word_model.dart';

class WordOfDayPage extends StatefulWidget {
  const WordOfDayPage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<WordOfDayPage> {
  MyHomePageState();

  @override
  void initState() {
    super.initState();
    HomeWidget.widgetClicked.listen((Uri? uri) => loadData());
    loadData();
  }

  final logo = "assets/k_logo.png";
  final _navigator = NavigationService.shared;
  final FlutterTts tts = FlutterTts();

  void loadData() async {
    final getWord = WordRepository().getDailyWordKeys();
    final getWordandValue = WordRepository().getDailyWordKeyAndValue();
    context.read<WordBloc>().add(WordEvent.searched(getWord));
    await HomeWidget.saveWidgetData<String>('_quote', getWordandValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WordBloc, WordState>(
        builder: (context, wordstate) {
          return CustomBackground(
            onTap: () {
              context.read<WordBloc>().clearAllList();
              _navigator.navigateTo(path: KRoute.HOME_PAGE);
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ElevatedButton(
                      child: Text("deneme"),
                      onPressed: () {
                        tts.speak("hello word");
                      }),
                  BlocBuilder<WordBloc, WordState>(
                    builder: (context, wordstate) {
                      if (wordstate.status.isSuccess) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(wordstate.remoteWordModel?.word?.toString() ??
                                ""),
                            Text(wordstate.remoteWordModel?.phonetics?[0].text
                                    .toString() ??
                                "")
                          ],
                        );
                      }
                      return Text("");
                    },
                  ),
                  BlocBuilder<TabBarBloc, TabBarState>(
                    builder: (context, state) {
                      return _tabBarWidget(context);
                    },
                  ),
                  BlocBuilder<TabBarBloc, TabBarState>(
                    builder: (context, tabBarState) {
                      return BlocBuilder<WordBloc, WordState>(
                        builder: (context, wordState) {
                          if (wordState.status.isSuccess) {
                            if (tabBarState.newTabIndex == 0) {
                              return _listViewBuilder(wordState.nounList);
                            } else if (tabBarState.newTabIndex == 1) {
                              return _listViewBuilder(wordState.verbList);
                            } else if (tabBarState.newTabIndex == 2) {
                              return _listViewBuilder(wordState.adjectiveList);
                            } else if (tabBarState.newTabIndex == 3) {
                              return _listViewBuilder(wordState.pronounList);
                            } else if (tabBarState.newTabIndex == 4) {
                              return _listViewBuilder(wordState.articlesList);
                            } else if (tabBarState.newTabIndex == 5) {
                              return _listViewBuilder(
                                  wordState.interjectionList);
                            } else if (tabBarState.newTabIndex == 6) {
                              return _listViewBuilder(wordState.adverbList);
                            } else if (tabBarState.newTabIndex == 7) {
                              return _listViewBuilder(
                                  wordState.prepositionList);
                            }
                          }
                          if (wordState.status.isLoading) {
                            return Center(child: CircularProgressIndicator());
                          }
                          return const Text("");
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  DefaultTabController _tabBarWidget(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 8,
      child: BlocBuilder<WordBloc, WordState>(
        builder: (context, wordstate) {
          return TabBar(
              isScrollable: true,
              onTap: (tabIndex) async {
                context
                    .read<TabBarBloc>()
                    .add(TabBarEvent.tabChangedEvent(tabIndex));
              },
              tabs: [
                Tab(
                    text: wordstate.nounList != null
                        ? "Noun: (${wordstate.nounList?.length})"
                        : "Noun"),
                Tab(
                    text: wordstate.verbList != null
                        ? "Verb:" " (${wordstate.verbList?.length})"
                        : "Verb"),
                Tab(
                    text: wordstate.adjectiveList != null
                        ? "Adjective:" " (${wordstate.adjectiveList?.length})"
                        : "Adjective"),
                Tab(
                    text: wordstate.pronounList != null
                        ? "Pronoun:" " (${wordstate.pronounList?.length})"
                        : "Pronoun"),
                Tab(
                    text: wordstate.articlesList != null
                        ? "Articles:" " (${wordstate.articlesList?.length})"
                        : "Articles"),
                Tab(
                    text: wordstate.interjectionList != null
                        ? "Interjection:"
                            " (${wordstate.interjectionList?.length})"
                        : "Interjection"),
                Tab(
                    text: wordstate.adverbList != null
                        ? "Adverb:"
                            " (${wordstate.adverbList?.length})"
                        : "Adverb"),
                Tab(
                    text: wordstate.prepositionList != null
                        ? "Preposition:"
                            " (${wordstate.prepositionList?.length})"
                        : "Preposition"),
              ]);
        },
      ),
    );
  }

  Column _listViewBuilder(List<Definitions>? data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        data != null
            ? Padding(
                padding: context.lowPadding,
                child: Text(
                  "DEFINITIONS",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            : Text(""),
        Padding(
          padding: context.lowPadding,
          child: Container(
            height: context.dynamicHeight,
            width: context.dynamicWidth,
            child: ListView.separated(
              itemCount: data?.length ?? 0,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    data?[index].definition != null
                        ? Text(data?[index].definition ?? "")
                        : Text(""),
                    data?[index].example != null
                        ? Text.rich(TextSpan(text: "Example: ", children: [
                            TextSpan(text: data?[index].example ?? ""),
                          ]))
                        : SizedBox(height: context.lowHeight),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: context.mediumHeight);
              },
            ),
          ),
        ),
      ],
    );
  }
}
