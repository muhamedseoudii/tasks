import 'package:flutter/material.dart';


import '../../homePage/view.dart';
import '../resetPass/view.dart';
import '../signUp/view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool obscureT = false;

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
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                "Add your details to login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff7C7D7E),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 36),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Your Email",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Enter your email address",
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
              ),
              SizedBox(height: 28),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscureT ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureT = !obscureT;
                      });
                    },
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Enter the Password",
                  hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    borderSide: BorderSide.none,
                    gapPadding: 5,
                  ),
                ),
                obscureText: !obscureT,
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
                      content: Text("You Login Successfully.."),
                      duration: Duration(seconds: 3),
                    ));
                    setState(() {});
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageView(),));
                  },
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal))),
              SizedBox(height: 24),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassView(),
                        ));
                    setState(() {});
                  },
                  child: Text("Forget your Password?",
                      style:
                          TextStyle(color: Color(0xff7C7D7E), fontSize: 14))),
              SizedBox(height: 30),
              TextButton(
                  onPressed: () {},
                  child: Text("or Login With",
                      style:
                          TextStyle(color: Color(0xff7C7D7E), fontSize: 14))),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    backgroundColor: Color(0xff367FC0),
                    fixedSize: Size.fromHeight(55)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Facebook.png", height: 24.0),
                    SizedBox(width: 30),
                    Text("Login with Facebook",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    backgroundColor: Color(0xffDD4B39),
                    fixedSize: Size.fromHeight(55)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google-plus-logo.png",
                      height: 24.0,
                    ),
                    SizedBox(width: 30),
                    Text("Login with Google",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                        color: Color(0xff7C7D7E),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpView(),
                          ));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontSize: 14,
                            fontWeight: FontWeight.normal)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
