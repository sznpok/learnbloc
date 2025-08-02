part of 'todo_with_state_bloc.dart';

sealed class TodoWithStateEvent extends Equatable {
  const TodoWithStateEvent();

  @override
  List<Object> get props => [];
}

class AddTodoEventWithState extends TodoWithStateEvent {
  final String todo;
  const AddTodoEventWithState(this.todo);
  @override
  List<Object> get props => [todo];
}
