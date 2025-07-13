import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'uppercase_lowercase_event.dart';
part 'uppercase_lowercase_state.dart';

class UppercaseLowercaseBloc
    extends Bloc<UppercaseLowercaseEvent, UppercaseLowercaseState> {
  UppercaseLowercaseBloc() : super(UppercaseLowercaseInitial('SusMiTa')) {
    //uppercase ko
    on<UppercaseChangedEvent>((event, emit) {
      emit(UppercaseLowercaseInitial(event.upperText));
    });
    //lowercase ko

    on<LowercaseChangedEvent>((event, emit) {
      emit(UppercaseLowercaseInitial(event.lowerText));
    });
  }
}
