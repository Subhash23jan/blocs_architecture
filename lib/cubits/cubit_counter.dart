

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit  extends Cubit{
  CounterCubit() : super(0);
  void increment(){
    print(state);
    emit(state+1);
    print(state);
  }
  void decrement(){
    emit(state-1);
  }

}