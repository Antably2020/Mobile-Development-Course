import 'package:exchange_app/screens/offers_recieved.dart';
import 'package:exchange_app/screens/show_items_screen.dart';
import 'package:flutter/material.dart';
import 'stateless_widgets/categories_widget.dart';
import 'screens/home.dart';
import 'stateless_widgets/cards_widget.dart';
import 'screens/My_ProductsScreen.dart';
import 'screens/my_offer.dart';
import 'package:exchange_app/screens/Sold_Items_Screen.dart';
import 'package:exchange_app/screens/Add_Product_screen.dart';
import 'package:exchange_app/screens/My_ProductsScreen.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => home(),
      '/categories': (context) => categories(),
      '/items': (context) => Show_items(),
      '/offers': (context) => my_offer(),
      '/sold': (context) => SoldItemsScreen(),
      '/addproducts': (context) => Add_Product(),
      '/offersR': (context) => offers_recieved(),
      '/myitems': (context) => My_ProductsScreen(),
    },
  ));
}
