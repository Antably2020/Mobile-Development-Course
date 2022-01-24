import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/statefull_widgets/My_Items_widget.dart';

class My_Products_Screen extends StatelessWidget {
  const My_Products_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MyItems(
            title: 'My Items',
          ),
         
        ],
      ),
      
    );
  }
}
