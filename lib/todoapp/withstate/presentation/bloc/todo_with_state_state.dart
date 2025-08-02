part of 'todo_with_state_bloc.dart';

sealed class TodoWithStateState extends Equatable {
  const TodoWithStateState();

  @override
  List<Object> get props => [];
}

final class TodoWithStateInitial extends TodoWithStateState {}

final class TodoWithStateChanged extends TodoWithStateState {
  final List<String> todos;
  const TodoWithStateChanged(this.todos);

  @override
  List<Object> get props => [todos];
}
