import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medicine_app/scr/commans.dart';
import 'package:medicine_app/scr/modeles/products.dart';
import 'package:medicine_app/scr/widgets/custum_text.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  Product product = Product(
      name: "Dolo-500mg",
      price: 8.36,
      rating: 4.8,
      wishlist: true,
      vendor: "Shree Medical",
      image: "paracitamol.jpeg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: Custumtext(text: "Shopping Cart"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3, right: 3),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "images/cart2.png",
                    width: 40,
                    height: 30,
                  ),
                ),
                Positioned(
                  right: 7,
                  bottom: 5,
                  child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: grey,
                                offset: Offset(2, 2),
                                blurRadius: 3)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Custumtext(
                          text: "2",
                          color: green,
                          size: 16,
                          weight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12),
            child: Container(
              height: 120,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: green.shade100, offset: Offset(3, 2), blurRadius: 15)
              ]),
              child: Row(
                children: [
                  Image.asset(
                    "images/${product.image}",
                    height: 150,
                    width: 120,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: product.name + "\n",
                        style: TextStyle(color: black, fontSize: 21)),
                    TextSpan(
                        text: "₹" + product.price.toString() + "\n",
                        style: TextStyle(
                            color: black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold))
                  ])),
                  SizedBox(width: 80),
                  IconButton(onPressed: null, icon: Icon(Icons.delete))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
