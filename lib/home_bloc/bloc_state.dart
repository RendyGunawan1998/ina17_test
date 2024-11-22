import '../core.dart';

abstract class NumberState extends Equatable {
  const NumberState();

  @override
  List<Object> get props => [];
}

class NumberInitial extends NumberState {}

class NumberLoading extends NumberState {}

class NumberLoaded extends NumberState {
  final List<dynamic> numbers;

  const NumberLoaded(this.numbers);

  @override
  List<Object> get props => [numbers];
}
