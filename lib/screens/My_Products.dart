import 'package:exchange_app/models/item.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar.dart';
import 'package:exchange_app/stateless_widgets/My_Products_widget.dart';

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
      body: My_Products_widget(),
    );
  }
}