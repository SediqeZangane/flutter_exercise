import 'package:bloc/bloc.dart';

class Counter_state {
  int current;

  Counter_state() {
    current = 0;
  }
}

abstract class Counter_Event {}

class Increment extends Counter_Event {}

class Decrement extends Counter_Event {}

// class Counter_Bloc extends Bloc<Counter_Event, Counter_state> {
//   Counter_Bloc(Counter_state initialState) : super(initialState);
//
//   @override
//   // TODO: implement initialState
//   Counter_state get initialState => Counter_state();
//
//   @override
//   Stream<Counter_state> mapEventToState(Counter_state currentState, Counter_Event event)async* {
//     // TODO: implement mapEventToState
//     // throw UnimplementedError();
//      if (event is Increment){
//      yield  currentState.current+=1;
//     }
//   }
//
// }