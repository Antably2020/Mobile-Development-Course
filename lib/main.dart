import 'package:exchange_app/screens/show_items.dart';
import 'package:exchange_app/stateless_widgets/My_Products_widget.dart';
import 'package:flutter/material.dart';
import 'stateless_widgets/categories.dart';
import 'screens/home.dart';
import 'stateless_widgets/cards.dart';
import 'screens/My_Products.dart';
import 'screens/My_Item.dart';
import 'screens/my_offer.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/items',
    routes: {
      '/': (context) => home(),
      '/categories': (context) => categories(),
      '/items': (context) => Show_items(),
      '/mmm': (context) => My_Products(),
      '/offers': (context) => my_offer(),
    },
  ));
}
