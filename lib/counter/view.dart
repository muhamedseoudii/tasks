import 'package:amoor1/counter/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = BlocProvider.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  child: IconButton(
                      onPressed: cubit.minus, icon: Icon(Icons.remove)),
                ),
                SizedBox(width: 10),
                BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) {
                      return Text("${cubit.count}",
                          style: TextStyle(fontSize: 20));
                    }),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  child:
                      IconButton(onPressed: cubit.plus, icon: Icon(Icons.add)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 50,
                  color: Colors.cyan,
                  child: TextButton(
                      onPressed: cubit.reset,
                      child: Text("Reset",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
