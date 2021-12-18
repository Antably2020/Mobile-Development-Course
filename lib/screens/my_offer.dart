import 'package:flutter/material.dart';
import 'package:exchange_app/models/offers.dart';

class my_offer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "My Offers",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getOffers(context)));
  }

  getOffers(BuildContext context) {
    return ListView.builder(
      itemCount: allOffers.length,
      itemBuilder: _getItem,
      padding: EdgeInsets.all(0.0),
    );
  }

  // First Attempt
  Widget _getItem(BuildContext context, int index) {
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
                new Text('Status: ${allOffers[index].Status}',
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal)),
                new Text('Traded with: ${allOffers[index].Tradedwith}',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal)),
              ]),
        )
      ],
    ));
  }
}
