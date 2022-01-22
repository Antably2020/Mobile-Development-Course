import 'package:exchange_app/models/ProductModel.dart';
import 'package:exchange_app/statefull_widgets/Sold_Items_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';

class SoldItemsScreen extends StatelessWidget {
  const SoldItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Exechange App'),
        appBar: AppBar(),
      ),
      body: SoldItems(
        title: 'My Sold Items',
      ),
    );
  }
}
