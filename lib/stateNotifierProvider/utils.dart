import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateNotifier = StateNotifierProvider<CounterStateNotifier, int>(
    (ref) => CounterStateNotifier());

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  void increment() {
    state++;
  }
}
