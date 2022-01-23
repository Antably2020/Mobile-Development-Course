import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/models/offers.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/ProductModel.dart';

import '../statefull_widgets/card_det_widget.dart';

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
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: Row(
              children: [
                new ElevatedButton(
                  child: new Text("Products"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/items');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(12, 242, 180, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                new ElevatedButton(
                  child: new Text("offers"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/offers');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(12, 242, 180, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                new ElevatedButton(
                  child: new Text("My Products"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/items');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(12, 242, 180, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                new ElevatedButton(
                  child: new Text("Profile"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/viewProfile');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(12, 242, 180, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/egypt.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                width: double.infinity,
                height: 200,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  padding:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 5),
                  itemCount: items.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Product_Description(items[index])),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(child: Divider(color: Colors.black)),
                              ListTile(
                                title: Text(
                                  items[index].title,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text(
                                  'created: 15/5/22 3:33pm\n' +
                                      items[index].description,
                                  maxLines: 4,
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                hoverColor: Colors.blue,
                                leading: Container(
                                  padding: EdgeInsets.only(
                                      left: 0, top: 0, right: 0, bottom: 0),
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    items[index].image,
                                    fit: BoxFit.cover,
                                    width: 100.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
                  })),
        ],
      ),
    );
  }
}
