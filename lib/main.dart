import 'package:exchange_app/screens/Sold_Items_Screen.dart';
import 'package:exchange_app/screens/show_items.dart';
import 'package:flutter/material.dart';
import 'stateless_widgets/categories.dart';
import 'stateless_widgets/home.dart';

import 'screens/My_Item.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/SoldItems',
    routes: {
      '/' : (context) => home(),
      '/categories': (context) => categories(),
      '/items': (context) => Show_items(),
       '/MyProducts': (context) => My_Products(),
       '/SoldItems': (context) => SoldItemsScreen(),

    },
  )
  );
}


