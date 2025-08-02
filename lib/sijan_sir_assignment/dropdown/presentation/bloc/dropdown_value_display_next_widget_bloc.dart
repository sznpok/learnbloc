import 'dart:async';

import 'package:basiclearnbloc/sijan_sir_assignment/dropdown/models/dropdown_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'dropdown_value_display_next_widget_event.dart';
part 'dropdown_value_display_next_widget_state.dart';

class DropdownValueDisplayNextWidgetBloc
    extends
        Bloc<
          DropdownValueDisplayNextWidgetEvent,
          DropdownValueDisplayNextWidgetState
        > {
  DropdownValueDisplayNextWidgetBloc()
    : super(
        DropdownValueDisplayNextWidgetState(
          status: FetchDropdownStatus.initial,
        ),
      ) {
    on<GetAllDropdownsEvent>(_onGetAllDropdownEvent);
    on<GetSingleDropdownEvent>(_onGetSingleDropdownEvent);
    on<UpdateIDEvent>(_onUpdateIDByEvent);
  }

  FutureOr<void> _onGetAllDropdownEvent(
    GetAllDropdownsEvent event,
    Emitter<DropdownValueDisplayNextWidgetState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          dropdownID: state.dropdownID,
          dropDownValues: dropdownValues,
        ),
      );
      emit(state.copyWith(status: FetchDropdownStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: FetchDropdownStatus.failure));
    }
  }

  FutureOr<void> _onGetSingleDropdownEvent(
    GetSingleDropdownEvent event,
    Emitter<DropdownValueDisplayNextWidgetState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          dropdownID: state.dropdownID,
          singleValue: state.singleValue,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: FetchDropdownStatus.failure));
    }
  }

  FutureOr<void> _onUpdateIDByEvent(
    UpdateIDEvent event,
    Emitter<DropdownValueDisplayNextWidgetState> emit,
  ) async {
    try {
      emit(state.copyWith(dropdownID: event.dropdownID));
    } catch (e) {
      emit(state.copyWith(status: FetchDropdownStatus.failure));
    }
  }
}
