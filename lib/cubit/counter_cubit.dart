import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:point_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIntialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int teamA = 0;
  int teamB = 0;

  void increment({
    required String teme,
    required int index,
  }) {
    if (teme == 'A') {
      teamA += index;
      emit(CounterAIncrementState());
    } else {
      teamB += index;
      emit(CounterBIncrementState());
    }
  }

  void reset() {
    teamA = 0;
    teamB = 0;
    emit(CounterResetState());
  }
}
