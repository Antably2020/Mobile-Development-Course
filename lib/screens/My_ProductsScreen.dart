import 'package:exchange_app/models/ProductModel.dart';
import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';
import 'package:exchange_app/statefull_widgets/My_Items_widget.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';

class My_Products_Screen extends StatelessWidget {
  const My_Products_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyItems(
        title: 'My Items',
      ),
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}
