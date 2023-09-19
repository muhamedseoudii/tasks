import 'package:amoor1/counter/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{

  CounterCubit() : super(CounterStates());

  int count = 1;

  void minus() {
    count--;
    print("count $count");
    emit(MinusStates());
    //setState(() {})
  }

  void plus() {
    count++;
    print("count $count");
    emit(PlusStates());
  }

  void reset() {
    count = 1;
    emit(ResetStates());
    // setState(() {});
  }
}
