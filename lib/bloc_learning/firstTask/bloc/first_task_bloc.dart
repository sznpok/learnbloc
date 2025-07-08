import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'first_task_event.dart';
import 'first_task_state.dart';

class FirstTaskBloc extends Bloc<FirstTaskEvent, FirstTaskState> {
  FirstTaskBloc() : super(FirstTaskState()) {
    on<ValueChangeEvent>(_valueChangedMethod);
    on<ColorChangeEvent>(_colorChangeMethod);
    on<SelectFruitEvent>(_selectFruitMethod);
    on<ChangeToCapitalEvent>(_changeToCapitalizeMethod);
    on<ChangeToLowerEvent>(_changeToLowerMethod);
  }
  FutureOr<void> _valueChangedMethod(
    ValueChangeEvent event,
    Emitter<FirstTaskState> emit,
  ) {
    emit(state.copyWith(typedMessage: event.newMessageEvent));
  }

  FutureOr<void> _colorChangeMethod(
    ColorChangeEvent event,
    Emitter<FirstTaskState> emit,
  ) {
    emit(state.copyWith(color: event.colorEvent));
  }

  FutureOr<void> _selectFruitMethod(
    SelectFruitEvent event,
    Emitter<FirstTaskState> emit,
  ) {
    emit(state.copyWith(fruit: event.fruitEvent));
  }

  FutureOr<void> _changeToCapitalizeMethod(
    ChangeToCapitalEvent event,
    Emitter<FirstTaskState> emit,
  ) {
    emit(state.copyWith(changedText: event.toCapitalTextEvent?.toUpperCase()));
  }

  FutureOr<void> _changeToLowerMethod(
    ChangeToLowerEvent event,
    Emitter<FirstTaskState> emit,
  ) {
    emit(state.copyWith(changedText: event.toLowerTextEvent?.toLowerCase()));
  }
}
