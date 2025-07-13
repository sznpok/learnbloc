import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial(Colors.black)) {
    on<ColorChangedEvent>((event, emit) {
      emit(ColorInitial(event.changedColor));
    });
  }
}
