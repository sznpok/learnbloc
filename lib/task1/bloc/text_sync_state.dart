import 'package:equatable/equatable.dart';

class TextSyncState extends Equatable {
  final String text;

  const TextSyncState({required this.text});

  @override
  List<Object> get props => [text];
}
