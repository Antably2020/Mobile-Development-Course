import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';

class MyItems extends StatefulWidget {
  MyItems({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyItems createState() => _MyItems();
}

class _MyItems extends State<MyItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
             itemCount: items.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyProducts(items[index])),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(items[index].title),
                      subtitle: Text(
                        items[index].description,
                      ),
                      leading: Image.asset(items[index].image),
                    ),
                  ));
            }));
  }
}
