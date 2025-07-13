part of 'uppercase_lowercase_bloc.dart';

sealed class UppercaseLowercaseState extends Equatable {
  const UppercaseLowercaseState();

  @override
  List<Object> get props => [];
}

class UppercaseLowercaseInitial extends UppercaseLowercaseState {
  final String initialText;
  const UppercaseLowercaseInitial(this.initialText);
  @override
  List<Object> get props => [initialText];
}
