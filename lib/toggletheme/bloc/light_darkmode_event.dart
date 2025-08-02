part of 'light_darkmode_bloc.dart';

sealed class LightDarkmodeEvent {
  const LightDarkmodeEvent();
}

class ToggleThemeEvent extends LightDarkmodeEvent {}
