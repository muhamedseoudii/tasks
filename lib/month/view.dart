import 'package:amoor1/month/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MonthView extends StatelessWidget {
  MonthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MonthsCubit cubit = BlocProvider.of(context);
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(20),
      children: [
        const SizedBox(height: 16),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: cubit.num1Controller,
          maxLength: 2,
          decoration: InputDecoration(
            labelText: "Month Number",
            filled: true,
            fillColor: Colors.white,
            hintText: "Enter the number of month",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              gapPadding: 5,
            ),
          ),
        ),
        SizedBox(height: 10),
        BlocBuilder(
            bloc: cubit,
            builder: (context, state) {
              return Text("Month name is: ${cubit.mm}",
                  style: TextStyle(fontSize: 30));
            }),
        SizedBox(height: 10),
        ElevatedButton(onPressed: cubit.getMonths, child: Text("Get Month")),
      ],
    ));
  }
}
