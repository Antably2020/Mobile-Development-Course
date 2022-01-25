import 'package:flutter/material.dart';

class Product {
  String? title, description, category, tradeWith, product_id, user_id;
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
      this.product_id,
      this.user_id});

  Map<String, dynamic> toJson(uid, product_id) => {
        'Title': title,
        'Traded With': tradeWith,
        'Category': category,
        'Description': description,
        'created': created,
        'Sold': 0,
        'Product_id': product_id,
        'User_id': uid
      };

  Product.fromSnapshot(snapshot)
      : title = snapshot.data()['Title'],
        tradeWith = snapshot.data()['Traded With'],
        category = snapshot.data()['Category'],
        description = snapshot.data()['Description'],
        sold = snapshot.data()['Sold'],
        product_id = snapshot.data()['Product_id'],
        user_id = snapshot.data()['User_id'],
        created = snapshot.data()['created'].toDate();
}
