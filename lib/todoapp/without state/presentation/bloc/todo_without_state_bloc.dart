import 'package:bloc/bloc.dart';

part 'todo_without_state_event.dart';

class TodoWithoutStateBloc extends Bloc<TodoWithoutStateEvent, List<String>> {
  TodoWithoutStateBloc() : super([]) {
    on<AddTodoEvent>((event, emit) {
      // state.add('Susmita');
      // emit(
      //   state,
      // ); //hamle yesari matho ko dui line code garda error auxa kinaki yesle eutai list ma modify garxa jun chai le euta memory ma point gareko hunxa ani processor le chai eutai memory ma  vako value lai kina change garne vanxa , tei vaera emit hudaina
      final updatedList = List<String>.from(state)
        ..add(
          event.todo,
        ); //naya list nai banaedinxa tei vaera reference ma point garyo k ani usle naya memory ma dekhesi value emit garxa
      emit(updatedList);
    });
  }
}
