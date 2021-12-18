import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import '../stateless_widgets/bar_widget.dart';
class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.red,
          title: Text('title git'),
          appBar: AppBar(),
          ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: (){Navigator.pushNamed(context, '/items');},
          child: Text('cat'),
          ),
          ),
          bottomNavigationBar: nav_bar_widget(),
    );
  }
}