// import 'package:equatable/equatable.dart';

// enum CounterStatus { initial, loading, success, error }

// class CounterState extends Equatable {
//   final int count;
//   final CounterStatus status;
//   final bool passwordVisibility;

//   const CounterState({
//     this.count = 0,
//     this.status = CounterStatus.initial,
//     this.passwordVisibility = true,
//   });

//   CounterState copyWith({
//     int? count,
//     CounterStatus? status,
//     bool? passwordVisibility,
//   }) {
//     return CounterState(
//       count: count ?? this.count,
//       status: status ?? this.status,
//       passwordVisibility: passwordVisibility ?? this.passwordVisibility,
//     );
//   }

//   @override
//   List<Object?> get props => [count, status, passwordVisibility];
// }
import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int count;
  const CounterState(this.count);

  @override
  List<Object> get props => [count];
}
