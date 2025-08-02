import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'todo_with_state_event.dart';
part 'todo_with_state_state.dart';

class TodoWithStateBloc extends Bloc<TodoWithStateEvent, TodoWithStateState> {
  TodoWithStateBloc() : super(TodoWithStateInitial()) {
    on<AddTodoEventWithState>((event, emit) {
      final currentState = state;
      List<String> updatedList = [];
      if (currentState is TodoWithStateChanged) {
        updatedList = List.from(currentState.todos);
      }
      updatedList.add(event.todo);
      emit(TodoWithStateChanged(updatedList));
    });
  }
}
