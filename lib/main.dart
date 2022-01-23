import 'package:exchange_app/screens/card_details_screen.dart';
import 'package:exchange_app/screens/offers_recieved.dart';
import 'package:exchange_app/screens/root.dart';
import 'package:exchange_app/screens/test.dart';
import 'package:exchange_app/services/auth.dart';
import 'package:exchange_app/statefull_widgets/offer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'stateless_widgets/categories_widget.dart';
import 'screens/home.dart';
import 'screens/my_offer.dart';
import 'package:exchange_app/screens/Sold_Items_Screen.dart';
import 'package:exchange_app/screens/Add_Product_screen.dart';
import 'package:exchange_app/screens/My_ProductsScreen.dart';
import 'package:exchange_app/screens/login.dart';
import 'package:exchange_app/screens/signup.dart';
import 'package:exchange_app/screens/viewProfile.dart';
import 'package:exchange_app/screens/Offer_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Auth>(
          create: (_) => Auth(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Root(),
          '/items': (context) => My_Products_Screen(),
          '/offers': (context) => my_offer(),
          '/sold': (context) => SoldItemsScreen(),
          '/addproducts': (context) => Add_Product(),
          '/offersCompare': (context) => Offer_screen(),
          '/login': (context) => login(),
          '/home': (context) => home(),
          '/signup': (context) => signup(),
          '/viewProfile': (context) => viewProfile(),
          '/offers_recieved': (context) => offers_recieved(),
          '/offer': (context) => offer(),
        },
      ),
    );
  }
}
