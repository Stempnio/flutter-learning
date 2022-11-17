import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:twitter_clone/bottom_navigator/page_list.dart';
part 'current_page_state.dart';

class CurrentPageCubit extends Cubit<CurrentPageState> {
  CurrentPageCubit()
      : super(CurrentPageState(
          currentIndex: 0,
          view: pageList[0],
        ));

  void changePage(int index) {
    emit(CurrentPageState(
      currentIndex: index,
      view: pageList[index],
    ));
  }
}
