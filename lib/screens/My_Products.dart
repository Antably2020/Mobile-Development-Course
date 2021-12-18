import 'package:exchange_app/models/item.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar.dart';
import 'package:exchange_app/stateless_widgets/My_Products_widget.dart';

class My_List extends StatelessWidget {
  const My_List({ Key? key }) : super(key: key);

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