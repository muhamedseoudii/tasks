import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Text("Menu" ,style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
    ),
    );
  }
}
