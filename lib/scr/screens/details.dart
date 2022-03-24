import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/scr/commans.dart';
import 'package:medicine_app/scr/helpers/screen_navigation.dart';
import 'package:medicine_app/scr/modeles/products.dart';
import 'package:medicine_app/scr/screens/cart.dart';
import 'package:medicine_app/scr/widgets/custum_text.dart';
import 'package:medicine_app/scr/widgets/small_floating_button.dart';

class Details extends StatefulWidget {
  final Product items;

  const Details({required this.items});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: black),
          backgroundColor: white,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart_sharp),
              onPressed: () {
                changeScreen(context, ShoppingCart());
              },
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                  height: 300,
                  child: Stack(children: <Widget>[
                    Padding(padding: EdgeInsets.all(20)),
                    Carousel(
                      images: [
                        AssetImage("images/${widget.items.image}"),
                        AssetImage("images/${widget.items.image}"),
                        AssetImage("images/${widget.items.image}")
                      ],
                      dotBgColor: white,
                      dotColor: grey,
                      dotIncreaseSize: 1.2,
                      dotIncreasedColor: green,
                      autoplay: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 5,
                                bottom: 0,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: white,
                                              offset: Offset(2, 3),
                                              blurRadius: 3)
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 3),
                                      child: Custumtext(
                                        text: "2",
                                        color: green,
                                        size: 18,
                                        weight: FontWeight.bold,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                        right: 14,
                        bottom: 14,
                        child: Container(
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: grey,
                                    offset: Offset(2, 1),
                                    blurRadius: 3)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.favorite,
                              size: 16,
                              color: green,
                            ),
                          ),
                        ))
                  ])),
              Custumtext(
                text: widget.items.name,
                size: 24,
                weight: FontWeight.bold,
              ),
              Custumtext(
                  text: "\₹${widget.items.price}",
                  size: 24,
                  weight: FontWeight.w600,
                  color: Colors.black),
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          size: 28,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: green[800],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 8, 15, 8),
                        child: Custumtext(
                          text: "Add To Cart",
                          color: white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 28,
                        )),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
