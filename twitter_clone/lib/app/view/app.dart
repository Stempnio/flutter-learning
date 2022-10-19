import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/home/home.dart';
import 'package:twitter_clone/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    return MaterialApp(
      theme: themeCubit.isDark ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(),
    );
  }
}
