

import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/screens/card_details_screen.dart';

class CardSquare extends StatefulWidget {
  CardSquare({Key? key, }) : super(key: key);



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
                  childAspectRatio: 0.75, 
                ),
            itemCount: items.length,
            itemBuilder: (BuildContext ctxt, int index) {
               return InkWell(
                  onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => card_details_screen(items[index])
                          ),
                          );
                  },
                  child: 
                  Column(
                    children: [
                      Container(
              padding: EdgeInsets.all(20),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: items[index].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${items[index].id}",
                child: Image.asset(items[index].image),
              ),
            ),
                   
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20 / 4),
            child: Text(
              // products is out demo list
              items[index].description,
              style: TextStyle(color: Colors.amber),
            ),
          ),
          Text(
            "\$${items[index].price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
           ],
                  ),
                  );
    
    
            }
            );
            
  }
}
