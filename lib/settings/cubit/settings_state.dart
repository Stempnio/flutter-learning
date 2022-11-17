import 'package:equatable/equatable.dart';

class SettingsState extends Equatable {
  const SettingsState({this.username = "none", this.password = "none"});

  final String username;
  final String password;

  SettingsState copyWith({String? username, String? password}) {
    return SettingsState(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [username, password];
}
