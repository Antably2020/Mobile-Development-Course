import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import '../stateless_widgets/bar_widget.dart';
class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
     
      body: HomePage(),
          bottomNavigationBar: nav_bar_widget(),
    );
  }
}