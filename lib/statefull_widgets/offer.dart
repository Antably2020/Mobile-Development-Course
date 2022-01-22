import 'package:flutter/material.dart';

import 'package:exchange_app/shapes/bg_shape2.dart';

class offer extends StatelessWidget {
  const offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Stack(children: <Widget>[
                  bg_shape2(),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Text('Product name',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/egypt.png",
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: 100.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                ),
                                Container(
                                  child: ButtonBar(
                                    children: <Widget>[
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(40, 0, 0, 20),
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Text('+200 EGP',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Text('By: mahmoud'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 270, 20, 20),
                    child: Center(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffffffff),
                        child: IconTheme(
                          data: IconThemeData(color: Colors.black),
                          child: Icon(
                            Icons.autorenew_rounded,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 330, 20, 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Text('Product name',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/egypt.png",
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: 100.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                ),
                                Container(
                                  child: ButtonBar(
                                    children: <Widget>[
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(40, 0, 0, 20),
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Text('+200 EGP',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Text('By: ahmed'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(100, 10, 100, 0),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: ElevatedButton(
                      child: Text('CHAT',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/'); // Nehot route el home page
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 255, 255, 1),
                          side: BorderSide(width: 2.0, color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: ElevatedButton(
                      child: Text('ACCEPT'),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/'); // Nehot route el home page
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 12, 242, 180),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: ElevatedButton(
                      child: Text('REJECT'),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/'); // Nehot route el home page
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 0, 0, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
              ],
            )));
  }
}
