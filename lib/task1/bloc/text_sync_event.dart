import 'package:equatable/equatable.dart';

abstract class TextSyncEvent extends Equatable {
  const TextSyncEvent();
  @override
  List<Object> get props => [];
}

class TextChangedEvent extends TextSyncEvent {
  final String newText;
  const TextChangedEvent(this.newText);
  @override
  List<Object> get props => [newText];
}

class UppercaseEvent extends TextSyncEvent {
  const UppercaseEvent();
  @override
  List<Object> get props => [];
}

class LowercaseEvent extends TextSyncEvent {
  const LowercaseEvent();
  @override
  List<Object> get props => [];
}
