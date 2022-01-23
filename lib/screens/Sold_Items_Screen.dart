import 'package:exchange_app/models/ProductModel.dart';
import 'package:exchange_app/statefull_widgets/Sold_Items_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';

class SoldItemsScreen extends StatelessWidget {
  const SoldItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        titleSpacing: 0,
        title: new Text(
          'Sold Products',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        
      ),
      body: SoldItems(
        title: 'My Sold Items',
      ),
    );
  }
}
