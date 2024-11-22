import '../core.dart';

abstract class NumberEvent extends Equatable {
  const NumberEvent();

  @override
  List<Object> get props => [];
}

class NumberChanged1 extends NumberEvent {
  final int number;

  const NumberChanged1(this.number);

  @override
  List<Object> get props => [number];
}

class NumberChanged2 extends NumberEvent {
  final int number;

  const NumberChanged2(this.number);

  @override
  List<Object> get props => [number];
}

class NumberChanged3 extends NumberEvent {
  final int number;

  const NumberChanged3(this.number);

  @override
  List<Object> get props => [number];
}

class NumberChanged4 extends NumberEvent {
  final int number;

  const NumberChanged4(this.number);

  @override
  List<Object> get props => [number];
}
