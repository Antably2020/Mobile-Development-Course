import 'package:exchange_app/screens/show_items_screen.dart';
import 'package:flutter/material.dart';
import 'stateless_widgets/categories_widget.dart';
import 'screens/home.dart';
import 'stateless_widgets/cards_widget.dart';
import 'screens/My_Item.dart';
import 'screens/my_offer.dart';
import 'package:exchange_app/screens/Sold_Items_Screen.dart';
import 'package:exchange_app/screens/Add_Product_screen.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/addproducts',
    routes: {
      '/': (context) => home(),
      '/categories': (context) => categories(),
      '/items': (context) => Show_items(),
      '/offers': (context) => my_offer(),
      '/sold': (context) => SoldItemsScreen(),
      '/addproducts': (context) => Add_Product(),
    },
  ));
}
