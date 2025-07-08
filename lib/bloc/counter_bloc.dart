import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementEvent>(_onIncrementEvent);
    on<TogglePasswordVisibilityEvent>(_onTogglePasswordVisibilityEvent);
  }

  FutureOr<void> _onIncrementEvent(
    IncrementEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(state.copyWith(count: state.count + 1));
  }

  FutureOr<void> _onTogglePasswordVisibilityEvent(
    TogglePasswordVisibilityEvent event,
    Emitter<CounterState> emit,
  ) {
    //state.copyWith(passwordVisibility: !state.passwordVisibility);
    emit(state.copyWith(passwordVisibility: !state.passwordVisibility));
  }
}
