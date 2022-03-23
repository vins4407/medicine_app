import 'package:flutter/material.dart';
import 'package:medicine_app/scr/commans.dart';
import 'package:medicine_app/scr/helpers/screen_navigation.dart';
import 'package:medicine_app/scr/screens/cart.dart';
import 'package:medicine_app/scr/widgets/bottom_navigation_icons.dart';
import 'package:medicine_app/scr/widgets/categories.dart';
import 'package:medicine_app/scr/widgets/custum_text.dart';
import 'package:medicine_app/scr/widgets/featured_products.dart';
import 'package:medicine_app/scr/widgets/small_floating_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Custumtext(
                      text: "What would you like to order?",
                      size: 18,
                    )),
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 5),
              ]),
              child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: green,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find medicine here",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: green,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Custumtext(text: "Featured", size: 20, color: grey),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Custumtext(text: "Popular", size: 20, color: grey),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Stack(children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("images/mask.jpg")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallButton(Icons.favorite),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow[900],
                                    size: 20,
                                  ),
                                ),
                                Text("4.8")
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.3),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.015),
                              Colors.black.withOpacity(0.025),
                            ])),
                  ),
                )),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Covid Essentials \n",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: white)),
                          TextSpan(
                              text: "by ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: white)),
                          TextSpan(
                              text: "nearby shops",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: white))
                        ], style: TextStyle(color: black))),
                      )
                    ],
                  ),
                ))
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 68,
        color: white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          BottomNavIcon(image: "home.png", name: "Home"),
          BottomNavIcon(image: "location.jpg", name: "Near by"),
          BottomNavIcon(
              onTap : () {
                changeScreen(context, ShoppingCart());
              },
              image: "cart.png",
              name: 'Cart'),
          BottomNavIcon(image: 'person.png', name: 'Account')
        ]),
      ),
    );
  }
}
