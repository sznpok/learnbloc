import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'light_darkmode_event.dart';
part 'light_darkmode_state.dart';

class LightDarkmodeBloc extends Bloc<LightDarkmodeEvent, LightDarkmodeState> {
  LightDarkmodeBloc() : super(LightDarkmodeInitial()) {
    on<ToggleThemeEvent>((event, emit) async {
      if (state is LightDarkmodeChanged) {
        final currentTheme = (state as LightDarkmodeChanged).themeMode;
        final newTheme = currentTheme == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light;

        emit(LightDarkmodeChanged(themeMode: newTheme));
      } else {
        emit(LightDarkmodeChanged(themeMode: ThemeMode.light));
      }
    });
  }
}
