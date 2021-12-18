import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/statefull_widgets/Product_Description.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
            itemCount: items[0].id,
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
                    ),
                  )
                  );
            })
            );
  }
}
