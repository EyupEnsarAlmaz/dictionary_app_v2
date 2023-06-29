import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';
import 'package:homescreen_widget/core/service/remote_word_service.dart';
import 'package:homescreen_widget/data/repositories/local_word_repositories.dart';
import 'package:homescreen_widget/features/home/presentation/pages/widget/background_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    HomeWidget.widgetClicked.listen((Uri? uri) => loadData());
    loadData();
  }

  final getWord = WordRepository().getDailyWordKeyAndValue();

  void loadData() async {
    final remotewordservice =
        RemoteWordService().getWords(word: WordRepository().getDailyWordKeys());
    await HomeWidget.saveWidgetData<String>('_quote', getWord);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getWord.toString()),
      ),
      body: CustomBackground(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
