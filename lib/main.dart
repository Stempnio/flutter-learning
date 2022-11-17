import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/app/app.dart';
import 'package:twitter_clone/bottom_navigator/cubit/current_page_cubit.dart';
import 'package:twitter_clone/theme/theme.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => ThemeCubit(),
      ),
      BlocProvider(
        create: (context) => CurrentPageCubit(),
      ),
    ],
    child: App(),
  ));
}
