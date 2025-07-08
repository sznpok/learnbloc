import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class FirstTaskState extends Equatable {
  final String typedMessageState;
  final Color colorState;
  final String fruitState;
  final String toChangeTextState;
  const FirstTaskState({
    this.typedMessageState = '',
    this.colorState = Colors.white,
    this.fruitState = '',
    this.toChangeTextState = '',
  });

  FirstTaskState copyWith({
    String? typedMessage,
    Color? color,
    String? fruit,
    String? changedText,
  }) {
    return FirstTaskState(
      typedMessageState: typedMessage ?? typedMessageState,
      colorState: color ?? colorState,
      fruitState: fruit ?? fruitState,
      toChangeTextState: changedText ?? toChangeTextState,
    );
  }

  @override
  List<Object?> get props => [
    typedMessageState,
    colorState,
    fruitState,
    toChangeTextState,
  ];
}
