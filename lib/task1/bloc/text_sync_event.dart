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
