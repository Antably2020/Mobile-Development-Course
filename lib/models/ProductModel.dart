import 'package:flutter/material.dart';

class Product {
  String? title, description, category, tradeWith;
  bool? sold;
  DateTime? created;

  Product();

  Map<String, dynamic> toJson() => {
        'Title': title,
        'Traded With': tradeWith,
        'Category': category,
        'Description': description,
        'created': created,
        'Sold': 0
      };
}
