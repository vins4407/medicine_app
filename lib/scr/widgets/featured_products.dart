import 'package:flutter/material.dart';
import 'package:medicine_app/scr/commans.dart';
import 'package:medicine_app/scr/helpers/screen_navigation.dart';
import 'package:medicine_app/scr/screens/details.dart';
import 'package:medicine_app/scr/widgets/custum_text.dart';
import 'package:medicine_app/scr/modeles/products.dart';


List<Product> productsList = [
  Product(
      name: "Dolo-500mg",
      price: 8.36,
      rating: 4.8,
      wishlist: true,
      vendor: "Shree Medical",
      image: "paracitamol.jpeg"),
  Product(
      name: "Almox-500mg",
      price: 60.00,
      rating: 4.7,
      wishlist: true,
      vendor: "Shree Medical",
      image: "almox.png"),
  Product(
      name: "Azee-250mg",
      price: 98.00,
      rating: 4.9,
      wishlist: true,
      vendor: "Shree Medical",
      image: "azee2.jpg"),
  
];

class Featured extends StatelessWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () {
                  changeScreen( _, Details(items: productsList[index]));
                },
                child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: green, offset: Offset(0, 5), blurRadius: 10)
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/${productsList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Custumtext(text: "${productsList[index].name}"),
                          ),
                          Padding(
                              padding: EdgeInsets.all(8),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: grey,
                                          offset: Offset(2, 2),
                                          blurRadius: 8)
                                    ]),
                                child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: green,
                                      size: 18,
                                    )),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Custumtext(
                                  text: "${productsList[index].rating}",
                                  color: grey,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: green,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: green,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: green,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: green,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                                size: 18,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Custumtext(
                              text: '₹${productsList[index].price}',
                              color: Colors.blueGrey,
                              size: 18,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
