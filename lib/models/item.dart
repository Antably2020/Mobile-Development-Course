import 'package:flutter/material.dart';


class Item {
  final String image , title,description;
  final int id,price;
  final Color color;
  final bool sold;

  Item(
    this.id,
    this.color,
    this.description,
    this.image,
    this.price,
    this.title,
    this.sold,
  );
}


List<Item> items = [
  Item(1,const Color(0xFF3D82AE), 'this is a test on description', 'assets/egypt.png', 20,'item1',true),
  Item(2,const Color(0xFF3D82AE), 'great', 'assets/egypt.png', 20,'item2',true),
  Item(1,const Color(0xFF3D82AE), 'great', 'assets/egypt.png', 20,'item3',false),
  Item(1,const Color(0xFF3D82AE), 'great', 'assets/egypt.png', 20,'item4',false)
];