import 'dart:core';


class Product{
  final String name;
  final double price;
  final String image;
  final double rating;
  final String vendor;
  final bool wishlist;

  Product({required this.name,required this.price,required this.image,required this.rating,required this.vendor,
      required this.wishlist});
}
