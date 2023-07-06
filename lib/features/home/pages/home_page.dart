import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_widget/home_widget.dart';
import 'package:homescreen_widget/core/companents/button/bloc2/bloc/tabbar_bloc.dart';

import 'package:homescreen_widget/core/service/remote_word_service.dart';
import 'package:homescreen_widget/data/models/words/remote_word_model.dart';
import 'package:homescreen_widget/data/repositories/local_word_repositories.dart';
import 'package:homescreen_widget/features/home/presentation/pages/bloc/bloc/word_bloc.dart';
import 'package:homescreen_widget/features/home/presentation/pages/widget/background_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
    final tabbarBloc = context.watch<TabbarBloc>().state.newTabIndex;
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
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              BlocBuilder<TabbarBloc, TabbarState>(
                builder: (context, state) {
                  return DefaultTabController(
                    initialIndex: 0,
                    length: 3,
                    child: TabBar(
                        onTap: (tabIndex) async {
                          switch (tabIndex) {
                            case 0:
                              context
                                  .read<TabbarBloc>()
                                  .add(TabbarEvent.tabChangedEvent(tabIndex));
                              break;
                            case 1:
                              context
                                  .read<TabbarBloc>()
                                  .add(TabbarEvent.tabChangedEvent(tabIndex));
                              break;
                            case 2:
                              context
                                  .read<TabbarBloc>()
                                  .add(TabbarEvent.tabChangedEvent(tabIndex));
                              break;
                            default:
                          }
                        },
                        tabs: [
                          Tab(text: "Noun"),
                          Tab(text: "Gramer"),
                          Tab(text: "Örnekler"),
                        ]),
                  );
                },
              ),
              BlocBuilder<WordBloc, WordState>(builder: (context, state) {
                if (state.status.isSuccess && tabbarBloc == 0) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.72,
                    child: Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          final meaning = wordBloc?.meanings?[index];
                          final definitions = meaning?.definitions;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                meaning?.partOfSpeech ?? "null",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              ListView.separated(
                                itemBuilder: (context, index) => Column(
                                  children: [
                                    Text(
                                      "Definition : ${definitions?[index].definition} ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Sentence  : ${definitions?[index].example}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 8,
                                ),
                                itemCount: definitions?.length ?? 0,
                                shrinkWrap: true,
                              )
                            ],
                          );
                        },
                        itemCount: wordBloc?.meanings?.length ?? 0,
                        separatorBuilder: (context, index) => SizedBox(
                          height: 32,
                        ),
                      ),
                    ),
                  );
                }
                return Text("");
              })
            ],
          ),
        ),
      ),
    );
  }
}
