import 'package:flutter_riverpod/legacy.dart';

class CounterViewModel extends StateNotifier<int> {
  CounterViewModel() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

final counterViewModelProvider = StateNotifierProvider<CounterViewModel, int>(
  (ref) => CounterViewModel(),
);
