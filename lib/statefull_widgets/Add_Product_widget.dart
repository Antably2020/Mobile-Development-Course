import 'package:flutter/material.dart';

import 'package:exchange_app/statefull_widgets/bg_shape.dart';

class AddProduct extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AddProduct> {
  TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Stack(children: <Widget>[
                  bg_shape(),
                  Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
                        child: Text(
                          "ADD PRODUCT",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 140, 20, 20),
                        child: Text(
                          "Trading App",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                  )
                ]),
             
                Container(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Product Title',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 20),
                 child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Trade With...',
                    ),
                  ),
                ),

                 Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 20),
                 child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Category',
                    ),
                  ),
                ),

                Container(
                   padding: EdgeInsets.fromLTRB(50, 0, 50, 20),
                  child: TextFormField(
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                ),
               
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: ElevatedButton(
                      child: Text('ADD PRODUCT'),
                      onPressed: () {
                        print(nameController.text);

                        Navigator.pushNamed(context, '/items');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(12, 242, 180, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
              
              ],
            )));
  }
}



