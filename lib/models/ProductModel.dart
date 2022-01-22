import 'package:flutter/material.dart';

class Product {
  String? title, description, category, tradeWith;
  bool? sold;

  Product();

  Map<String, dynamic> toJson() => {
        'Title': title,
        'Traded With': tradeWith,
        'Category': category,
        'Description': description,
        'Sold': 0
      };
}
