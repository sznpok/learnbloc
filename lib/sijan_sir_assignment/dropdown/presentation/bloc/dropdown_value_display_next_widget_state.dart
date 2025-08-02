part of 'dropdown_value_display_next_widget_bloc.dart';

enum FetchDropdownStatus { initial, loaded, failure }

class DropdownValueDisplayNextWidgetState extends Equatable {
  final List<DropdownModel> dropDownValues;
  final String? singleValue;
  final int dropdownID;
  final FetchDropdownStatus status;

  const DropdownValueDisplayNextWidgetState({
    this.dropDownValues = const [],
    this.dropdownID = 0,
    this.singleValue,
    required this.status,
  });

  DropdownValueDisplayNextWidgetState copyWith({
    int? dropdownID,
    List<DropdownModel>? dropDownValues,
    FetchDropdownStatus? status,
    String? singleValue,
  }) {
    return DropdownValueDisplayNextWidgetState(
      dropDownValues: dropDownValues ?? this.dropDownValues,
      dropdownID: dropdownID ?? this.dropdownID,
      singleValue: singleValue ?? this.singleValue,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [dropdownID, dropDownValues, singleValue, status];
}
