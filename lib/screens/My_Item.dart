import 'package:exchange_app/models/item.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar.dart';
import 'package:exchange_app/statefull_widgets/My_Items.dart';
import 'package:exchange_app/statefull_widgets/Product_Description.dart';


class My_Products extends StatelessWidget {
  const My_Products({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('exchange'),
        appBar: AppBar(),

      ),
      body: MyHomePage(title: 'My Items',),
    );
  }
}