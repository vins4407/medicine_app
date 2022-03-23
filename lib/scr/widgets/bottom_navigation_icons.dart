import 'package:flutter/material.dart';
import 'package:medicine_app/scr/widgets/custum_text.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback? onTap;

  const BottomNavIcon(
      {required this.image, required this.name,  this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ?? null,
        child: Column(
          children: <Widget>[
            Image.asset(
              "images/$image",
              width: 20,
              height: 20,
            ),
            SizedBox(
              height: 2,
            ),
            Custumtext(
              text: name,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
