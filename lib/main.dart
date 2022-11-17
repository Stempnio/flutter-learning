import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_counter/app.dart';
import 'package:flutter_counter/state_observer.dart';

void main() {
  Bloc.observer = StateObserver();
  runApp(const App());
}