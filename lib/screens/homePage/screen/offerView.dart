import 'package:flutter/material.dart';

class OfferView extends StatelessWidget {
  const OfferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Offer" ,style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
