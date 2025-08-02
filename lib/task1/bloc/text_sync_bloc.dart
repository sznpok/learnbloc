import 'package:flutter_bloc/flutter_bloc.dart';
import 'text_sync_event.dart';
import 'text_sync_state.dart';

class TextSyncBloc extends Bloc<TextSyncEvent, TextSyncState> {
  TextSyncBloc() : super(TextSyncState(text: 'Display')) {
    on<TextChangedEvent>((event, emit) {
      emit(TextSyncState(text: event.newText));
    });

    on<UppercaseEvent>((event, emit) {
      final uppercaseText = state.text.toUpperCase();
      emit(TextSyncState(text: uppercaseText));
    });

    on<LowercaseEvent>((event, emit) {
      final lowercaseText = state.text.toLowerCase();
      emit(TextSyncState(text: lowercaseText));
    });
  }
}
