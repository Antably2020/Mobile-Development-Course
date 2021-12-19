
import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';
import 'package:exchange_app/statefull_widgets/Add_Product_widget.dart';


class Add_Product extends StatelessWidget {
  const Add_Product({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Exechange App'),
        appBar: AppBar(),
    ),
      body: AddProduct(),
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}