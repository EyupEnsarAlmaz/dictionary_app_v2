// ignore_for_file: public_member_api_docs, sort_constructors_first
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
              BlocBuilder<TabbarBloc, TabbarState>(builder: (context, state) {
                if (state.newTabIndex == 0) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Text(wordBloc!.word![index].toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25))
                            ],
                          );
                        }),
                  );
                }
                return Text("");
              }),
            ],
          ),
        ),
      ),
    );
  }
}
