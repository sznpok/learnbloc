import 'package:flutter/material.dart';

abstract class FirstTaskEvent {}

class ValueChangeEvent extends FirstTaskEvent {
  final String? newMessageEvent;
  ValueChangeEvent({required this.newMessageEvent});
}

class ColorChangeEvent extends FirstTaskEvent {
  final Color? colorEvent;

  ColorChangeEvent({required this.colorEvent});
}

class SelectFruitEvent extends FirstTaskEvent {
  final String? fruitEvent;
  SelectFruitEvent({required this.fruitEvent});
}

class ChangeToCapitalEvent extends FirstTaskEvent {
  final String? toCapitalTextEvent;
  ChangeToCapitalEvent({required this.toCapitalTextEvent});
}

class ChangeToLowerEvent extends FirstTaskEvent {
  final String? toLowerTextEvent;

  ChangeToLowerEvent({required this.toLowerTextEvent});
}
