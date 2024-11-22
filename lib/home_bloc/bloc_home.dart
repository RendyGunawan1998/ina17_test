import 'package:flutter_bloc/flutter_bloc.dart';
import '../core.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc() : super(NumberInitial()) {
    on<NumberChanged1>((event, emit) {
      List<int> numbers = [];
      for (int i = 1; i <= event.number; i++) {
        numbers.add(i);
      }

      emit(NumberLoaded(numbers));
    });

    on<NumberChanged2>((event, emit) {
      List<int> numbers = [];
      for (int i = 1; i <= event.number; i++) {
        numbers.add(i);
      }
      for (int i = event.number - 1; i >= 1; i--) {
        numbers.add(i);
      }
      emit(NumberLoaded(numbers));
    });

    on<NumberChanged3>((event, emit) {
      List<int> results = [];
      for (int i = 1; i <= event.number; i++) {
        print('i :: $i');
        int combined = (i * 10) + (i - 1);
        results.add(combined);
      }
      emit(NumberLoaded(results));
    });

    on<NumberChanged4>((event, emit) {
      List<dynamic> results = [];
      for (int i = 1; i <= event.number; i++) {
        dynamic result = i;
        if (i % 5 == 0) {
          result = 'LIMA';
        } else if (i % 7 == 0) {
          result = 'TUJUH';
        }
        results.add(result);
      }
      emit(NumberLoaded(results));
    });
  }
}
