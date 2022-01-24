import 'package:flutter/material.dart';

class Product {
  String? title, description, category, tradeWith,id;
  int? sold;
  DateTime? created;

  Product(
      {this.title,
      this.description,
      this.category,
      this.tradeWith,
      this.sold,
      this.created,
      this.id});

  Map<String, dynamic> toJson() => {
        'Title': title,
        'Traded With': tradeWith,
        'Category': category,
        'Description': description,
        'created': created,
        'Sold': 0,
        'id' : id
      };

  Product.fromSnapshot(snapshot)
      : title = snapshot.data()['Title'],
        tradeWith = snapshot.data()['Traded With'],
        category = snapshot.data()['Category'],
        description = snapshot.data()['Description'],
        sold = snapshot.data()['Sold'],
        id = snapshot.data()['id'],
        created = snapshot.data()['created'].toDate();
}
