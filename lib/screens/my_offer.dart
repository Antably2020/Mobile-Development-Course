import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/offers.dart';

class my_offer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Exechange App'),
        appBar: AppBar(),
    ),
    
             extendBodyBehindAppBar: true,
        body: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getOffers(context)),
            
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
