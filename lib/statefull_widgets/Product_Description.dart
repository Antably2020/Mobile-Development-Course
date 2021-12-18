
import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/statefull_widgets/My_Items.dart';

class MyProducts extends StatefulWidget {
  final Item myData;

  MyProducts(this.myData);

  @override
  _MyProductsState createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is  ' + widget.myData.title,
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}