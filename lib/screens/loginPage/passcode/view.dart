import 'package:flutter/material.dart';

import '../newPass/view.dart';


class PassCodeView extends StatefulWidget {
  const PassCodeView({Key? key}) : super(key: key);

  @override
  State<PassCodeView> createState() => _PassCodeViewState();
}

class _PassCodeViewState extends State<PassCodeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(34),
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "We have sent an OTP to \n your Mobile",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff4A4B4D),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Please check your mobile number 071*****12 \n continue to reset your password",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff7C7D7E),
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 54),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF2F2F2)),
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "*",
                      labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 37),
                      contentPadding: EdgeInsets.all(18),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 28),
                Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF2F2F2)),
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "*",
                      labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 37),
                      contentPadding: EdgeInsets.all(18),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 28),
                Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF2F2F2)),
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "*",
                      labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 37),
                      contentPadding: EdgeInsets.all(18),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 28),
                Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF2F2F2)),
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "*",
                      labelStyle: TextStyle(color: Color(0xffB6B7B7),fontSize: 37,),
                      contentPadding: EdgeInsets.all(18),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassView(),));
                },
                child: Text("Next",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600))),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Didn't Receive?",
                  style: TextStyle(
                      color: Color(0xff7C7D7E),
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 3,),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Your code has sent to you.."),
                      duration: Duration(seconds: 3),
                    ));
                  },
                  child: Text("Click Here",
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
    );
  }
}
