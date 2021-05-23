part of 'counter_cubit.dart';

class CounterState extends Equatable{
  final int counter;

  CounterState({
    this.counter,
  });

  @override
  List<Object> get props => [counter];

  CounterState copyWith({
    int counter
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  @override
  String toString() {
    return 'CounterState{counter: $counter}';
  }
}
