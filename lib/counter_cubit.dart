import 'package:cubit_exp_391/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  //int initialValue;
  CounterCubit() : super(CounterState(count: 0)); ///initial state

  ///increment
  void incrementCount(){
    emit(CounterState(count: state.count+1));
  }

  void decrementCount(){
    if(state.count>0){
      emit(CounterState(count: state.count-1));
    }
  }

}