part of 'uppercase_lowercase_bloc.dart';

sealed class UppercaseLowercaseEvent extends Equatable {
  const UppercaseLowercaseEvent();

  @override
  List<Object> get props => [];
}

class UppercaseChangedEvent extends UppercaseLowercaseEvent {
  final String upperText;

  const UppercaseChangedEvent(this.upperText);
  @override
  List<Object> get props => [upperText];
}

class LowercaseChangedEvent extends UppercaseLowercaseEvent {
  final String lowerText;

  const LowercaseChangedEvent(this.lowerText);
  @override
  List<Object> get props => [lowerText];
}
