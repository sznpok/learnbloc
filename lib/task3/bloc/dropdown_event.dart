part of 'dropdown_bloc.dart';

sealed class DropdownEvent extends Equatable {
  const DropdownEvent();
  @override
  List<Object> get props => [];
}

class DropDownValueChangedEvent extends DropdownEvent {
  final String selectedValue;
  const DropDownValueChangedEvent(this.selectedValue);

  @override
  List<Object> get props => [selectedValue];
}
