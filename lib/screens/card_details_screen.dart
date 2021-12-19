import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:exchange_app/stateless_widgets/card_det_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';

class My_ProductsScreen extends StatelessWidget {
  const My_ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}
