import 'package:exchange_app/models/item.dart';
import 'package:flutter/material.dart';

class CardSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children : <Widget>[
      Container(
        height: 180,
        width: 160,
        decoration: BoxDecoration(color: items[0].color),
    ),
    ],
    ); 
}
}