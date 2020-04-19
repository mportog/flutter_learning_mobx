import 'package:mobx/mobx.dart';

class Counter {
  Counter() {
    increment = Action(_increment);
    decrement = Action(_decrement);
    reset = Action(_reset);
  }

  Observable _count = Observable(0);

  int get count => _count.value;

  Action increment;
  void _increment() {
    _count.value++;
  }

  Action decrement;
  void _decrement() {
    _count.value--;
  }

  Action reset;
  void _reset() {
    _count.value = 0;
  }
}
