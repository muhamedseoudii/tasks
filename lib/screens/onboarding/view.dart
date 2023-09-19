import 'package:flutter/material.dart';

import '../loginPage/view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currPage = 0;
  List<String> title = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  List<String> desc = [
    "Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office\n wherever you are",
    "Real time tracking of your food on the app\n once you placed the order"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 313,
              child: PageView(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    print(value);
                    currPage = value;
                    setState(() {});
                  },
                  children: List.generate(
                    3,
                    (index) => Image.asset(
                      "assets/images/on_boarding${currPage+1}.png",
                      height: 313,
                      width: 210,
                    ),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: EdgeInsetsDirectional.only(end: 5),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: Color(index == currPage
                                    ? 0xffFC6011
                                    : 0xffD6D6D6),
                              ),
                            )),
                  ),
                  SizedBox(height: 32),
                  Text(
                    title[currPage],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 34),
                  Text(
                    desc[currPage],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff7C7D7E),
                      fontSize: 13,
                      height: 1.7,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          backgroundColor: Color(0xffFC6011),
                          fixedSize: Size.fromHeight(50)),
                      onPressed: () {
                        if (currPage == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPageView(),
                              ));
                        } else {
                          currPage++;
                          setState(() {});
                        }
                      },
                      child: Text(currPage == 2 ? "Finish" : "Next",
                          style: TextStyle(fontSize: 16)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
