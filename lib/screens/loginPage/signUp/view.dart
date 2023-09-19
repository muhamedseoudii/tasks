import 'package:flutter/material.dart';

import '../../onboarding/view.dart';
import '../login/view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(34),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Sign Up",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                "Add your details to sign up",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff7C7D7E),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 36),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Enter your name",
                  hintStyle:TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
              ),
              SizedBox(height: 28),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Enter your email",
                  hintStyle:TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
              ),
              SizedBox(height: 28),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Mobile No",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Enter your Mobile number",
                  hintStyle:TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
              ),
              SizedBox(height: 28),
              TextFormField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  labelText: "Address",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Enter your address",
                  hintStyle:TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
              ),
              SizedBox(height: 28),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Enter your password",
                  hintStyle:TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
              ),
              SizedBox(height: 28),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Confirm your Password",
                  hintStyle:TextStyle(color: Color(0xffB6B7B7),fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
              ),
              SizedBox(height: 28),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      backgroundColor: Color(0xffFC6011),
                      fixedSize: Size.fromHeight(55)),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("You Sign Up Successfully.."),
                      duration: Duration(seconds: 3),
                    ));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingView(),));
                    setState(() {});
                  },
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal))),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                        color: Color(0xff7C7D7E),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: 3,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));
                    },
                    child: Text("Login",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontSize: 14,
                            fontWeight: FontWeight.normal)
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
