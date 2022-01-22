import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:exchange_app/stateless_widgets/cards_widget.dart';
import 'package:flutter/material.dart';
import '../stateless_widgets/bar_widget.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Exechange App'),
        appBar: AppBar(),
      ),
      body: CardSquare(),
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}
