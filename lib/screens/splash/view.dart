import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


import '../../core/logic/helper_methods.dart';
import '../loginPage/view.dart';
import '../onboarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      navigateTo(context, OnBoardingView(),keepHistory: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Background.jpg",
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          FadeIn(
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/monkey.jpg",
                  height: 103.11,
                  width: 105.1,
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Meal",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text("Monkey",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 34,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 10),
                Text("FOOD DELIVERY",
                    style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 16,
                    ))
              ],
            )),
            duration: Duration(seconds: 5),
          )
        ],
      ),
    );
  }
}
