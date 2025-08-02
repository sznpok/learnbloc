import 'dart:async';

import 'package:basiclearnbloc/sijan_sir_assignment/searchtextfield/models/searchtextfield_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'searchtextfield_event.dart';
part 'searchtextfield_state.dart';

class SearchtextfieldBloc
    extends Bloc<SearchtextfieldEvent, SearchtextfieldState> {
  SearchtextfieldBloc()
    : super(SearchtextfieldState(status: FetchDropdownStatus.initial)) {
    on<GetAllSearchEvent>(_onSearchTextEvent);
    on<SearchTextEvent>(_onDisplayTextsEvent);
    on<UpdateIDEvent>(_onUpdateIDEvent);
    on<ShowCrossIconEvent>(_onShowCrossIconEvent);
  }

  FutureOr<void> _onSearchTextEvent(
    GetAllSearchEvent event,
    Emitter<SearchtextfieldState> emit,
  ) {
    try {
      emit(state.copyWith(searchFieldValues: searchfieldValues));
      emit(state.copyWith(status: FetchDropdownStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: FetchDropdownStatus.failure));
    }
  }

  FutureOr<void> _onDisplayTextsEvent(
    SearchTextEvent event,
    Emitter<SearchtextfieldState> emit,
  ) {
    try {
      emit(
        state.copyWith(
          searchFieldValues: searchfieldValues,
          singleValue: event.searchText,
        ),
      );
      emit(state.copyWith(status: FetchDropdownStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: FetchDropdownStatus.failure));
    }
  }

  FutureOr<void> _onUpdateIDEvent(
    UpdateIDEvent event,
    Emitter<SearchtextfieldState> emit,
  ) {
    try {
      emit(state.copyWith(searchID: event.searchId));
      emit(state.copyWith(status: FetchDropdownStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: FetchDropdownStatus.failure));
    }
  }

  FutureOr<void> _onShowCrossIconEvent(
    ShowCrossIconEvent event,
    Emitter<SearchtextfieldState> emit,
  ) {
    try {
      emit(state.copyWith(icon: Icon(Icons.close)));
      emit(state.copyWith(status: FetchDropdownStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: FetchDropdownStatus.failure));
    }
  }
}
