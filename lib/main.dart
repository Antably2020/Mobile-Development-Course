import 'package:exchange_app/screens/show_items.dart';
import 'package:exchange_app/stateless_widgets/My_Products_widget.dart';
import 'package:flutter/material.dart';
import 'stateless_widgets/categories.dart';
import 'stateless_widgets/home.dart';
import 'stateless_widgets/cards.dart';
import 'screens/My_Products.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/mmm',
    routes: {
      '/' : (context) => home(),
      '/categories': (context) => categories(),
      '/items': (context) => Show_items(),
       '/mmm': (context) => My_Products(),

    },
  )
  );
}


