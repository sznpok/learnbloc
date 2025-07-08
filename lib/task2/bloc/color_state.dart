import 'package:flutter/widgets.dart';

abstract class ColorState {}

class ColorInitial extends ColorState {
  final Color color;
  ColorInitial(this.color);
}
