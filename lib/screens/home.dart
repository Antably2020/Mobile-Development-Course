import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:exchange_app/stateless_widgets/cards_widget.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
              titleSpacing: 0,
              title: new Text(
                "Home",
                style: TextStyle(color: Colors.black),
              ),
              
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            extendBodyBehindAppBar: true,
            body: CardSquare(),
          ),
          nav_bar_widget(),
        ],
      ),
    );
  }
}
