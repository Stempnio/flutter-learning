part of 'theme_cubit.dart';

enum ThemeMode {
  light,
  dark,
}

class ThemeState extends Equatable {
  const ThemeState({required this.themeMode});

  final themeMode;

  @override
  List<Object?> get props => [themeMode];
}
