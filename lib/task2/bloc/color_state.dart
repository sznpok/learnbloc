part of 'color_bloc.dart';

class ColorState extends Equatable {
  const ColorState();
  @override
  List<Object> get props => [];
}

class ColorInitial extends ColorState {
  final Color initialColor;
  const ColorInitial(this.initialColor);
  @override
  List<Object> get props => [initialColor];
}
