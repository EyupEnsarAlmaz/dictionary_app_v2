import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homescreen_widget/core/extantion/context_extantion.dart';
import 'package:homescreen_widget/core/navigation/constant/routest_constant.dart';
import 'package:homescreen_widget/features/search/pages/search_page.dart';
import 'package:homescreen_widget/features/search/presentation/pages/bloc/bloc/word_bloc.dart';
import 'package:homescreen_widget/features/wordofday/pages/word_of_day_page.dart';
import 'core/companents/button/bloc2/bloc/tabbar_bloc.dart';
import 'core/service/remote_word_service.dart';
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
        initialRoute: KRoute.WORDOFDAY_PAGE,
        theme: ThemeData(
            primaryColor: Colors.white,
            textTheme:
                const TextTheme(titleSmall: TextStyle(color: Colors.white))),
        home: WordOfDayPage(),
      ),
    );
  }
}
