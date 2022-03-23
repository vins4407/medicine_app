import 'package:flutter/material.dart';
import 'package:medicine_app/scr/commans.dart';
import 'package:medicine_app/scr/modeles/category.dart';

import '../helpers/style.dart';
import 'custum_text.dart';

List<Category> categoriesList = [
  Category(name: 'Medicine', image: "medicine1.jpeg"),
  Category(name: "covid essntials", image: "covidessential.jpeg"),
  Category(name: "Personal Care", image: "personalcare.jpeg"),
];

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: green, offset: Offset(1, 1), blurRadius: 5),
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Custumtext(
                  text: categoriesList[index].name,
                  size: 10,
                  color: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
