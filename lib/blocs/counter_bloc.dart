import 'package:blocs_architecture/blocs/counter_bloc_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents,int>{
  CounterBloc():super(0){
    on<CounterBlocIncrement>((event, emit) =>emit(state+1));
    on<CounterBlocDecrement>((event, emit) =>emit(state+1));
  }
}