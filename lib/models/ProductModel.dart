import 'package:flutter/material.dart';

class Product {
  String? title, description, category, tradeWith,id;
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
<<<<<<< HEAD
      this.id});
=======
      this.createdBy});
>>>>>>> a20e04e3328c9003d3cbd74780ea0eabb6810c0a

  Map<String, dynamic> toJson(uid) => {
        'Title': title,
        'Traded With': tradeWith,
        'Category': category,
        'Description': description,
        'created': created,
        'Sold': 0,
<<<<<<< HEAD
        'id' : id
=======
        'Created By': uid
>>>>>>> a20e04e3328c9003d3cbd74780ea0eabb6810c0a
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
