import 'package:amoor1/month/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MonthsCubit extends Cubit<MonthsStates>{
  MonthsCubit(): super(MonthsStates());

  TextEditingController num1Controller = TextEditingController();
  String mm="";

  void getMonths(){

    int num1 = int.tryParse(num1Controller.text) ?? 0;
    List<String> month = [
      "January",
      "Febraury",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    mm =month[num1 - 1];
    print(mm);

    emit(MonthsGetState());
    // setState(() {});
  }

}