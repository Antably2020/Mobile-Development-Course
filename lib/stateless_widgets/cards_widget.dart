import 'package:exchange_app/models/offers.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/screens/card_details_screen.dart';

class CardSquare extends StatefulWidget {
  CardSquare({
    Key? key,
  }) : super(key: key);

  @override
  _CardSquare createState() => _CardSquare();
}

class _CardSquare extends State<CardSquare> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemCount: allOffers.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => card_details_screen(items[index])),
              );
            },
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                 
                   height: 140,
                   width: 160,
                  decoration: BoxDecoration(
                    color: items[index].color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child:  Image.asset("assets/" + allOffers[index].image),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                      // products is out demo list
                      allOffers[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                ),
                
                Text(
                  "\Traded with: ${allOffers[index].Tradedwith}",
                  
                )
              ],
            ),
          );
        });
  }
}
