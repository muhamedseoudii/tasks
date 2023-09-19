import 'package:flutter/material.dart';
import 'login/view.dart';
import 'signUp/view.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 406,
            child: Image.asset("assets/images/photo.png",
            fit: BoxFit.fill),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 330),
              Image.asset(
                "assets/images/monkey.jpg",
                height: 103.11,
                width: 105.1,
              ),
              SizedBox(height: 13.9),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Meal",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4,),
                    Text("Monkey",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 34,
                            fontWeight: FontWeight.bold)
                    )
                  ],
                ),
              ),
              SizedBox(height: 6),
              Text("FOOD DELIVERY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 16,)
              ),
              SizedBox(height: 44),
               Text("Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff7C7D7E),
                    fontSize: 13,)
              ),
              SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28)),
                        backgroundColor: Color(0xffFC6011),
                        fixedSize: Size.fromHeight(50)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginView()),
                      );
                    },
                    child: Text("Login", style: TextStyle(fontSize: 16))),

              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          side: BorderSide(color: Color(0xffFC6011),width: 2)
                        ),
                        backgroundColor: Colors.white,
                        fixedSize: Size.fromHeight(50)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView(),));
                    },
                    child: Text("Create an Account", style: TextStyle(fontSize: 16,color: Color(0xffFC6011)))
                ),

              )
            ],
          )

        ],
      ),
    );
  }
}
