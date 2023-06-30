// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_widget/home_widget.dart';

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

  final getWord = WordRepository().getDailyWordKeyAndValue();
  final logo = "assets/k_logo.png";

  void loadData() async {
    final remotewordservice = RemoteWordService.shared
        .getWords(word: WordRepository().getDailyWordKeys());
    await HomeWidget.saveWidgetData<String>('_quote', getWord);
  }

  final _texteditincontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordBloc, WordState>(
      builder: (context, state) {
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
                          context.read<WordBloc>().add(
                              WordEvent.searched(_texteditincontroller.text));
                        },
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  DefaultTabController(
                    length: 3,
                    child: TabBar(isScrollable: true, tabs: [
                      Tab(text: "Noun"),
                      Tab(text: "Gramer"),
                      Tab(text: "Örnekler"),
                    ]),
                  ),
                  BlocBuilder<WordBloc, WordState>(
                    builder: (context, state) {
                      switch (state.status) {
                        case WordStatus.initial:
                          return const Placeholder();
                        case WordStatus.loading:
                          return const CircularProgressIndicator();
                        case WordStatus.success:
                          return Expanded(
                            child: ListView.builder(
                                itemCount: 1,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Text(
                                          state.remoteWordModel!
                                              .phonetics![index].text
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25))
                                    ],
                                  );
                                }),
                          );
                        case WordStatus.failure:
                        default:
                          return const Icon(Icons.abc);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
