import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';


import '../../core/logic/helper_methods.dart';
import 'screen/menuView.dart';
import 'screen/offerView.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  List<IconData> iconList = [
    Icons.menu,
    Icons.shopping_bag,
    Icons.person,
    Icons.more_horiz
  ];
  List<Widget> lists = [
    MenuView(),
    OfferView(),

  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFC6011),
        onPressed: () {
          navigateTo(context, HomePageView());
        },
        child: Icon(Icons.home,color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        activeColor: Color(0xffFC6011),
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _currentIndex = index),

        //other params
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text("Good morning Akila!",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4A4B4D))),
                    SizedBox(width: 140),
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xff4A4B4D),
                      size: 27,
                    ),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Text("Delivering to",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffB6B7B7))),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("Current Location",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7C7D7E))),
                    SizedBox(width: 40),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xffFC6011),
                    )
                  ],
                ),
                SizedBox(height: 34),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Search food",
                    labelStyle:
                        TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                    filled: true,
                    fillColor: Color(0xffF2F2F2),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search food here",
                    hintStyle:
                        TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none,
                      gapPadding: 5,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 88,
                        height: 88,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Image.network(
                          "https://www.thecookierookie.com/wp-content/uploads/2023/04/stovetop-burgers-recipe-2-960x1200.jpg",
                          height: 88,
                          width: 88,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 18),
                      Container(
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Image.network(
                          "https://www.ugaescapes.com/blog/wp-content/uploads/sites/9/2019/12/traditional-food-feat.jpg",
                          height: 88,
                          width: 88,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 18),
                      Container(
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Image.network(
                          "https://www.thesun.co.uk/wp-content/uploads/2020/08/NINTCHDBPICT000603046726.jpg?w=620",
                          height: 88,
                          width: 88,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 18),
                      Container(
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Image.network(
                          "https://www.blueosa.com/wp-content/uploads/2020/01/the-best-top-10-indian-dishes.jpg",
                          height: 88,
                          width: 88,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Offers",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 50),
                      Text(
                        "Sri Lankan",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 50),
                      Text(
                        "Italian",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 65),
                      Text(
                        "Indian",
                        style: TextStyle(
                            color: Color(0xff4A4B4D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 57),
                Row(
                  children: [
                    Text(
                      "Popular Restaurents",
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Container(
                  width: 375,
                  height: 193,
                  child: Image.network(
                    "https://st3.idealista.it/cms/archivie/styles/idcms_social_large_desktop/public/2022-10/media/image/aurelien-lemasson-theobald-x00czbt4dfk-unsplash.jpg?VersionId=.psxlajlp_zPDSWcMl.pyURy5qcpugf4&fv=aAUEfWR4&itok=e1XRUfOA",
                    height: 375,
                    width: 193,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Minute by tuk tuk",
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Color(0xffFC6011),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "4.9",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "(124 ratings) Café",
                      style: TextStyle(
                          color: Color(0xffB6B7B7),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      ".",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Western Food",
                      style: TextStyle(
                          color: Color(0xffB6B7B7),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Container(
                  width: 375,
                  height: 193,
                  child: Image.network(
                    "https://www.tastingtable.com/img/gallery/breakfast-recipes/intro-1651937325.webp",
                    height: 375,
                    width: 193,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Café de Noir",
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Color(0xffFC6011),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "4.5",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "(124 ratings) Café",
                      style: TextStyle(
                          color: Color(0xffB6B7B7),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      ".",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Western Food",
                      style: TextStyle(
                          color: Color(0xffB6B7B7),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Container(
                  width: 375,
                  height: 193,
                  child: Image.network(
                    "https://cdn.broadsheet.com.au/cache/17/4f/174f49ecb8b2d7bc3833e63be7193199.jpg",
                    height: 375,
                    width: 193,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Bakes by Tella",
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Color(0xffFC6011),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "4.5",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "(124 ratings) Café",
                      style: TextStyle(
                          color: Color(0xffB6B7B7),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      ".",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Western Food",
                      style: TextStyle(
                          color: Color(0xffB6B7B7),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
