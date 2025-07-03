abstract class CounterEvent {
  const CounterEvent();
}

class IncrementEvent extends CounterEvent {
  const IncrementEvent();
}

class FetchLoadDataEvent extends CounterEvent {
  const FetchLoadDataEvent();
}

class TogglePasswordVisibilityEvent extends CounterEvent {
  const TogglePasswordVisibilityEvent();
}
