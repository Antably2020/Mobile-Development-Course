import 'package:flutter/material.dart';
import 'package:exchange_app/models/ProductModel.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';
/*
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
<<<<<<< Updated upstream
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sold');
            },
            child: Text("Sold Items"),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
                  child:ListTile(
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
                    ),),
                  ),
          Row(
            children: [
              Column(
                children: [
                  
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 10, 50, 0),
                    child: Text('New Products',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 50, 0),
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
                  height: 50,
                  margin: EdgeInsets.fromLTRB(70, 10, 0, 0),
                  child: ElevatedButton(
                    child: IconTheme(
                      data: IconThemeData(color: Colors.black),
                      child: Icon(
                        Icons.sort,
                        size: 30,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        items = items.reversed.toList();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(245, 245, 245, 1),
                    ),
                  )),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  padding:
                      EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
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
                        child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(items[index].title),
                                subtitle: Text(
                                  items[index].description,
                                ),
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
=======
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sold');
              },
              child: Text("Sold Items"),
            ),
          ],
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
            //itemCount: items.length,
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
                  child: Card(
                    child: ListTile(
                     // title: Text(items[index].title),
                      subtitle: Text(
                        items[index].description,
                      ),
                      leading: Image.asset(
                        items[index].image,
                        fit: BoxFit.cover,
                        width: 100.0,
                      ),
                    ),
                  ));
            }));
>>>>>>> Stashed changes
  }
}
*/