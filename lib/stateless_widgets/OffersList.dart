import 'package:exchange_app/models/offers.dart';
import 'package:flutter/material.dart';

class getOffer extends StatelessWidget {
  const getOffer({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(
      children: <Widget>[
        new ListTile(
          leading: new Image.asset(
            "assets/" + allOffers[index].image,
            fit: BoxFit.cover,
            width: 100.0,
          ),

          title: new Text(
            allOffers[index].name,
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(allOffers[index].Status,
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal)),
                new Text('Traded with: ${allOffers[index].Tradedwith}',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal)),
              ]),
          //trailing: ,
        )
      ],
    ));
  }
}
