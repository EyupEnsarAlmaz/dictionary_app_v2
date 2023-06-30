import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_widget/home_widget.dart';
import 'package:homescreen_widget/core/service/remote_word_service.dart';
import 'package:homescreen_widget/data/repositories/local_word_repositories.dart';
import 'package:homescreen_widget/features/home/presentation/pages/bloc/bloc/word_bloc.dart';
import 'package:homescreen_widget/features/home/presentation/pages/home_page.dart';
import 'package:homescreen_widget/word_bloc_observer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  Bloc.observer = WordBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WordBloc(RemoteWordService.shared),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dictionary App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
