import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/models/offers.dart';
import 'package:exchange_app/statefull_widgets/My_Items_widget.dart';
import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';
import 'package:exchange_app/stateless_widgets/allProdCard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/models/ProductModel.dart';

import '../statefull_widgets/card_det_widget.dart';

class CardSquare extends StatefulWidget {
  CardSquare({
    Key? key,
  }) : super(key: key);
  Product _prod = Product();
  @override
  _CardSquare createState() => _CardSquare();
}

class _CardSquare extends State<CardSquare> {
  List<Object> _itemsList = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getitemsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
            
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/trade1.png'),
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
                height: 150,
              ),
            ),
          ),
          Expanded(
              child: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  MyItems(title: 'Vehicles')));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.motorcycle,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            Text('Vehicle'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      color: const Color.fromARGB(255, 12, 242, 180),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  MyItems(title: 'Electronics')));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.motorcycle,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            Text('Electronics'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      color: const Color.fromARGB(255, 12, 242, 180),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  MyItems(title: 'Electronics')));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.motorcycle,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            Text('Furnuture'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      color: const Color.fromARGB(255, 12, 242, 180),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyItems(title: 'Books')));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.motorcycle,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            Text('Books'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      color: const Color.fromARGB(255, 12, 242, 180),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyItems(title: 'Fashion')));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.motorcycle,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            Text('Fashion'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      color: const Color.fromARGB(255, 12, 242, 180),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyItems(title: 'Other')));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.motorcycle,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            Text('Other'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      color: const Color.fromARGB(255, 12, 242, 180),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
          ),

          /*
          Expanded(
              child: ListView.builder(
                  padding:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 5),
                  itemCount: _itemsList.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return allProdCard(_itemsList[index] as Product);
                  })), Container(margin: EdgeInsets.fromLTRB(0, 90, 0, 0),),*/
        ],
      ),
    );
  }

  Future getitemsList() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    var data =
        await FirebaseFirestore.instance.collection('All Products').get();
    setState(() {
      _itemsList = List.from(data.docs.map((doc) => Product.fromSnapshot(doc)));
      print(_itemsList.length);
      print(uid);
    });
  }
}
