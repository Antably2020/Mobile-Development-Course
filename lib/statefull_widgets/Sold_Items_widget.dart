import 'package:exchange_app/models/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';
import 'package:exchange_app/shapes/bg_shape3.dart';

// ignore: must_be_immutable
class SoldItems extends StatefulWidget {
  SoldItems({Key? key, required this.title}) : super(key: key);

  final String title;
  Product _prod = Product();

  @override
  _SoldItemsState createState() => _SoldItemsState();
}

class _SoldItemsState extends State<SoldItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        bg_shape3(),
        Column(
          children: [
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'search For Item...',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 50, 0),
                      child: Text('Sold Products',
                          style: TextStyle(
                            color: Color.fromARGB(255, 12, 242, 180),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 50, 10),
                      child: Text('Showing All Products',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(90, 10, 0, 5),
                  child: IconButton(
                    icon: const Icon(Icons.sort),
                    color: Color.fromARGB(255, 12, 242, 180),
                    onPressed: () {
                      setState(() {
                        items = items.reversed.toList();
                      });
                    },
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    padding:
                        EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 5),
                    itemCount:
                        items.where((c) => c.sold == true).toList().length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Product_Description(widget._prod)),
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
      ]),
    );
  }
}
