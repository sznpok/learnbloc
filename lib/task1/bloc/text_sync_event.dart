abstract class TextSyncEvent {}

class TextChangedEvent extends TextSyncEvent {
  final String newText;

  TextChangedEvent(this.newText);
}
