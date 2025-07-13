part of 'dropdown_bloc.dart';

class DropdownState extends Equatable {
  final String initialValue;
  const DropdownState({required this.initialValue});

  @override
  List<Object> get props => [initialValue];
}
