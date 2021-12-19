import 'package:exchange_app/screens/offers_recieved.dart';
import 'package:exchange_app/screens/show_items_screen.dart';
import 'package:flutter/material.dart';
import 'stateless_widgets/categories_widget.dart';
import 'screens/home.dart';
import 'screens/my_offer.dart';
import 'package:exchange_app/screens/Sold_Items_Screen.dart';
import 'package:exchange_app/screens/Add_Product_screen.dart';
import 'package:exchange_app/screens/My_ProductsScreen.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';
import 'package:exchange_app/screens/login.dart';
import 'package:exchange_app/screens/signup.dart';
import 'package:exchange_app/screens/changepassword.dart';
import 'package:exchange_app/screens/viewProfile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/': (context) => home(),
      '/categories': (context) => categories(),
      '/items': (context) => Show_items_Screen(),
      '/offers': (context) => my_offer(),
      '/sold': (context) => SoldItemsScreen(),
      '/addproducts': (context) => Add_Product(),
      '/offersR': (context) => offers_recieved(),
      '/myitems': (context) => My_ProductsScreen(),
      '/login': (context) => login(),
      '/signup': (context) => signup(),
      '/changepassword': (context) => changepassword(),
      '/viewProfile': (context) => viewProfile(),
    },
  ));
}
