import 'package:flutter/material.dart';

class Product {
  String? title, description, category, tradeWith;
  int? sold;
  DateTime? created;
  String? createdBy;

  Product(
      {this.title,
      this.description,
      this.category,
      this.tradeWith,
      this.sold,
      this.created,
      this.createdBy});

  Map<String, dynamic> toJson(uid) => {
        'Title': title,
        'Traded With': tradeWith,
        'Category': category,
        'Description': description,
        'created': created,
        'Sold': 0,
        'Created By': uid
      };

  Product.fromSnapshot(snapshot)
      : title = snapshot.data()['Title'],
        tradeWith = snapshot.data()['Traded With'],
        category = snapshot.data()['Category'],
        description = snapshot.data()['Description'],
        sold = snapshot.data()['Sold'],
        created = snapshot.data()['created'].toDate();
}
