part of 'color_bloc.dart';

sealed class ColorEvent extends Equatable {
  const ColorEvent();

  @override
  List<Object> get props => [];
}

class ColorChangedEvent extends ColorEvent {
  final Color changedColor;
  const ColorChangedEvent(this.changedColor);
  @override
  List<Object> get props => [changedColor];
}
