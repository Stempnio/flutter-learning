import 'package:bloc/bloc.dart';
import 'package:flutter_counter/settings/cubit/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  void changeUsername(String username) => emit(
        state.copyWith(username: username),
      );

  void changePassword(String password) => emit(
        state.copyWith(password: password),
      );
}
