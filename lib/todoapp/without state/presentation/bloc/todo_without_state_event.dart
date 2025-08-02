part of 'todo_without_state_bloc.dart';

sealed class TodoWithoutStateEvent {}

class AddTodoEvent extends TodoWithoutStateEvent {
  final String todo;
  AddTodoEvent(this.todo);
}
