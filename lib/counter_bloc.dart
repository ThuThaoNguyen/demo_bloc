import 'package:bloc_counter/counter_event.dart';
import 'package:bloc_counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc(CounterState initialState) : super(initialState);
  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async*{
    if(event is Increment){
      yield CounterState(volumn:state.volumn+1);
    }
    else {yield CounterState( volumn: state.volumn-1); }
  }

}