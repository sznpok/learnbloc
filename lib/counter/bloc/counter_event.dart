// abstract class CounterEvent {
//   const CounterEvent();
// }

// class IncrementEvent extends CounterEvent {
//   const IncrementEvent();
// }

// class FetchLoadDataEvent extends CounterEvent {
//   const FetchLoadDataEvent();
// }

// class TogglePasswordVisibilityEvent extends CounterEvent {
//   const TogglePasswordVisibilityEvent();
// }
import 'package:equatable/equatable.dart';

sealed class CounterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}
