part of 'light_darkmode_bloc.dart';

sealed class LightDarkmodeState extends Equatable {
  const LightDarkmodeState();

  @override
  List<Object> get props => [];
}

final class LightDarkmodeInitial extends LightDarkmodeState {
  final ThemeMode themeMode = ThemeMode.light;
}

final class LightDarkmodeLoading extends LightDarkmodeState {}

final class LightDarkmodeChanged extends LightDarkmodeState {
  final ThemeMode themeMode;
  const LightDarkmodeChanged({required this.themeMode});
  @override
  List<Object> get props => [themeMode];
}

//yo nabanayeni hunxa
final class LightDarkmodeFailure extends LightDarkmodeState {
  final String failure;
  const LightDarkmodeFailure(this.failure);
  @override
  List<Object> get props => [failure];
}
