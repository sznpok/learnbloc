// color_bloc.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'color_event.dart';
import 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial(Colors.blue)) {
    on<ChangeColorEvent>((event, emit) {
      emit(ColorInitial(event.color));
    });
  }
}
