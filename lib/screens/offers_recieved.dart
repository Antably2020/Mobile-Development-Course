import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/offers.dart';

class offers_recieved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Exechange App'),
        appBar: AppBar(),
    ),
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
        child: Row(
      children: [
        Image.asset(
          "assets/" + allOffers[index].image,
          fit: BoxFit.cover,
          height: 100,
          width: 100.0,
        ),
        Column(
          children: <Widget>[
            Text(
              allOffers[index].name,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            Text('Traded with: ${allOffers[index].Tradedwith}',
                style:
                    TextStyle(fontSize: 11.0, fontWeight: FontWeight.normal)),
          ],
        ),
        Column(
          children: [
            ButtonBar(children: [
              Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Accept"),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 30), primary: Colors.green),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Reject"),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 30), primary: Colors.red),
                  ),
                ),
              ]),
            ])
          ],
        )
      ],
    ));
  }
}
