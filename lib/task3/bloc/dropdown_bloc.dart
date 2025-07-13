import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'dropdown_event.dart';
part 'dropdown_state.dart';

class DropdownBloc extends Bloc<DropdownEvent, DropdownState> {
  DropdownBloc() : super(const DropdownState(initialValue: 'Apple')) {
    on<DropDownValueChangedEvent>((event, emit) {
      emit(DropdownState(initialValue: event.selectedValue));
    });
  }
}
