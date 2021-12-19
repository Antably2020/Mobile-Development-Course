import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';

class SoldItems extends StatefulWidget {
  SoldItems({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SoldItemsState createState() => _SoldItemsState();
}

class _SoldItemsState extends State<SoldItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
            itemCount: items.where((c) => c.sold == true).toList().length,
            itemBuilder: (BuildContext ctxt, int index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/sold');
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(items[index].title),
                      subtitle: Text(
                        items[index].description,
                      ),
                      leading: Image.asset(items[index].image),
                    ),
                  )
                  );
            })
            );
  }
}
