import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/app/app.dart';
import 'package:twitter_clone/theme/theme.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeCubit(),
    child: App(),
  ));
}
