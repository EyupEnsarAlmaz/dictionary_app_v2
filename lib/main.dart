import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/companents/button/bloc2/bloc/tabbar_bloc.dart';
import 'core/service/remote_word_service.dart';
import 'features/home/presentation/pages/bloc/bloc/word_bloc.dart';
import 'features/home/pages/home_page.dart';
import 'word_bloc_observer.dart';

void main() async {
  Bloc.observer = WordBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WordBloc(RemoteWordService.shared),
        ),
        BlocProvider(
          create: (context) => TabBarBloc(),
        ),
      ],
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
