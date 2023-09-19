import 'package:flutter/material.dart';

import '../../homePage/view.dart';


class NewPassView extends StatefulWidget {
  const NewPassView({Key? key}) : super(key: key);

  @override
  State<NewPassView> createState() => _NewPassViewState();
}

class _NewPassViewState extends State<NewPassView> {
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
                "New Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                "Please enter your email to receive a \n link to create a new password via email",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff7C7D7E),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 39),
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
                      content: Text("Your password changed Successfully.."),
                      duration: Duration(seconds: 3),
                    ));
                    setState(() {});
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageView(),));
                  },
                  child: Text("Next",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600))),
              SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
