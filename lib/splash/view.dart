import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
      // navigateTo(context, OnBoardingView(),keepHistory: false);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Pattern.png",
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          FadeIn(
            child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/Logo.png",
                      height: 139,
                      width: 175,
                    ),
                    SizedBox(height: 25),
                    Text("Food Ninja",
                        style: TextStyle(
                          fontSize: 40,
                        )
                    ),
                    SizedBox(height: 10),
                    Text("Deliever Favorite Food",
                        style: TextStyle(
                          color: Color(0xff09051C),
                          fontSize: 13,
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
