import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/offers.dart';

class my_offer extends StatelessWidget {
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
                "My Offers",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: getOffers(context),
          ),
        ],
      ),
      bottomNavigationBar: nav_bar_widget(),
    );
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
    return Card(
        child: Column(
      children: <Widget>[
        ListTile(
          leading: Image.asset(
            "assets/" + allOffers[index].image,
            fit: BoxFit.cover,
            width: 100.0,
          ),
          title: Text(
            allOffers[index].name,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Status: ${allOffers[index].Status}',
                    style: TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal)),
                Text('Traded with: ${allOffers[index].Tradedwith}',
                    style: TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal)),
              ]),
        )
      ],
    ));
  }
}
