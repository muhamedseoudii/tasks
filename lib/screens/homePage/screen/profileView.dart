import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Profile" ,style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
