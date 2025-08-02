part of 'dropdown_value_display_next_widget_bloc.dart';

sealed class DropdownValueDisplayNextWidgetEvent extends Equatable {
  const DropdownValueDisplayNextWidgetEvent();

  @override
  List<Object?> get props => [];
}

// class DropdownInitialValue extends DropdownValueDisplayNextWidgetEvent {
//   final String initialValue;
//   const DropdownInitialValue({required this.initialValue});

//   @override
//   List<Object> get props => [initialValue];
// }

// final class DropdownValueChangedEvent
//     extends DropdownValueDisplayNextWidgetEvent {
//   final String changedValue;

//   const DropdownValueChangedEvent({required this.changedValue});

//   @override
//   List<Object> get props => [changedValue];
// }

final class GetAllDropdownsEvent extends DropdownValueDisplayNextWidgetEvent {
  const GetAllDropdownsEvent();
  @override
  List<Object?> get props => [];
}

final class GetSingleDropdownEvent extends DropdownValueDisplayNextWidgetEvent {
  const GetSingleDropdownEvent();
  @override
  List<Object?> get props => [];
}

final class UpdateIDEvent extends DropdownValueDisplayNextWidgetEvent {
  final int dropdownID;
  const UpdateIDEvent({this.dropdownID = 0});

  @override
  List<Object?> get props => [dropdownID];
}
