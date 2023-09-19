import 'package:flutter/material.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("More" ,style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
