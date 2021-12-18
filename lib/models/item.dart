import 'package:flutter/material.dart';


class Item {
  final String image , title,description;
  final int id,price;
  final Color color;

  Item(
    this.id,
    this.color,
    this.description,
    this.image,
    this.price,
    this.title,
  );
}

List<Item> items = [
  Item(1,const Color(0xFF3D82AE), 'great', 'assets/egypt.png', 20,'item1'),
  Item(2,const Color(0xFF3D82AE), 'great', 'assets/egypt.png', 20,'item2'),
  Item(3,const Color(0xFF3D82AE), 'great', 'assets/egypt.png', 20,'item3'),
  Item(4,const Color(0xFF3D82AE), 'great', 'assets/egypt.png', 20,'item4')
];