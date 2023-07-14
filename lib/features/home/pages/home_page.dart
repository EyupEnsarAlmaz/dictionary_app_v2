import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_widget/home_widget.dart';
import 'package:homescreen_widget/core/companents/button/bloc2/bloc/tabbar_bloc.dart';

import 'package:homescreen_widget/data/repositories/local_word_repositories.dart';
import 'package:homescreen_widget/features/home/presentation/pages/bloc/bloc/word_bloc.dart';
import 'package:homescreen_widget/features/home/presentation/pages/widget/background_widget.dart';

import '../../../data/models/words/remote_word_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  MyHomePageState();

  @override
  void initState() {
    super.initState();
    HomeWidget.widgetClicked.listen((Uri? uri) => loadData());
    loadData();
  }

  final logo = "assets/k_logo.png";

  void loadData() async {
    final getWord = WordRepository().getDailyWordKeyAndValue();
    await HomeWidget.saveWidgetData<String>('_quote', getWord);
  }

  final _texteditincontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final wordBloc = context.watch<WordBloc>().state.remoteWordModel;
    final tabbarBloc = context.watch<TabBarBloc>().state.newTabIndex;
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomBackground(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(logo, width: 100, height: 100),
              ),
              TextField(
                controller: _texteditincontroller,
                decoration: InputDecoration(
                  hintText: 'Search word',
                  suffixIcon: IconButton(
                    onPressed: () {
                      context
                          .read<WordBloc>()
                          .add(WordEvent.searched(_texteditincontroller.text));
                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
              BlocBuilder<TabBarBloc, TabBarState>(
                builder: (context, state) {
                  return DefaultTabController(
                    initialIndex: 0,
                    length: 3,
                    child: TabBar(
                        onTap: (tabIndex) async {
                          switch (tabIndex) {
                            case 0:
                              context
                                  .read<TabBarBloc>()
                                  .add(TabBarEvent.tabChangedEvent(tabIndex));
                              break;
                            case 1:
                              context
                                  .read<TabBarBloc>()
                                  .add(TabBarEvent.tabChangedEvent(tabIndex));
                              break;
                            case 2:
                              context
                                  .read<TabBarBloc>()
                                  .add(TabBarEvent.tabChangedEvent(tabIndex));
                              break;
                            default:
                          }
                        },
                        tabs: const [
                          Tab(text: "Noun"),
                          Tab(text: "Verb"),
                          Tab(text: "Adjectives"),
                        ]),
                  );
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
                        } else if (tabBarState.newTabIndex == 0) {
                          return _listViewBuilder(wordState.adjectiveList);
                        }

                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.9,
                        //   height: MediaQuery.of(context).size.height * 0.72,
                        //   child: ListView.separated(
                        //     shrinkWrap: true,
                        //     itemBuilder: (context, index) {
                        //       final meaning = wordBloc?.meanings?[index];
                        //       final definitions = meaning?.definitions;
                        //       return Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             meaning?.partOfSpeech ?? "null",
                        //             style: const TextStyle(color: Colors.white),
                        //           ),
                        //           const SizedBox(
                        //             height: 8,
                        //           ),
                        //           ListView.separated(
                        //             itemBuilder: (context, index) => Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 Text(
                        //                   "Definition : ${definitions?[index].definition} ",
                        //                   style: const TextStyle(
                        //                       color: Colors.white,
                        //                       fontWeight: FontWeight.bold),
                        //                 ),
                        //                 const SizedBox(
                        //                   height: 4,
                        //                 ),
                        //                 Text(
                        //                   "Sentence  : ${definitions?[index].example}",
                        //                   style: const TextStyle(
                        //                       color: Colors.white),
                        //                 ),
                        //               ],
                        //             ),
                        //             separatorBuilder: (context, index) =>
                        //                 const SizedBox(
                        //               height: 8,
                        //             ),
                        //             itemCount: definitions?.length ?? 0,
                        //             shrinkWrap: true,
                        //           )
                        //         ],
                        //       );
                        //     },
                        //     itemCount: wordBloc?.meanings?.length ?? 0,
                        //     separatorBuilder: (context, index) =>
                        //         const SizedBox(
                        //       height: 32,
                        //     ),
                        //   ),
                        // );
                      }
                      return const Text("");
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  ListView _listViewBuilder(List<Definitions>? data) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data!.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            data[index].definition ?? "",
          ),
          subtitle: Text(
            data[index].example ?? "",
          ),
        );
      },
    );
  }
}
