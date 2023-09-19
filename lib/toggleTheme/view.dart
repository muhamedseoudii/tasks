import 'package:amoor1/counter/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/logic/helper_methods.dart';
import 'cubit.dart';

class ToggleThemeView extends StatelessWidget {
  ToggleThemeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit cubit = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Mode",style: TextStyle(fontSize: 25),),
        elevation: 0  ,
        actions: [
          BlocBuilder(
            bloc: cubit,
            builder: (context,state) {
              return Switch(
                value: cubit.isOn,
                onChanged: cubit.OnThemeChange,
              );
            }
          )
        ],
      ),
      body: SafeArea(child: Center(
        child: Column(
          mainAxisSize:  MainAxisSize.min,
          children: [
            TextButton(onPressed: () {
              navigateTo(context, CounterView());

            }, child: Text("Next",style: TextStyle(fontSize: 25),))
          ],
        ),
      )),
    );
  }
}
//  "phonenumber": "Telefonnummer",
//  "password": "Passwort",
//  "login": "Anmeldung"