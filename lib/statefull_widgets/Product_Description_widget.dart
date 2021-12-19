import 'package:flutter/material.dart';
import 'package:exchange_app/models/item.dart';

class Product_Description extends StatefulWidget {
  final Item myData;

  Product_Description(this.myData);

  @override
  _Product_DescriptionState createState() => _Product_DescriptionState();
}

class _Product_DescriptionState extends State<Product_Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: (Text(
              'item title',
              style: const TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0),
            )),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(color: Colors.white),
          ),

          // Main Body

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(widget.myData.title,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Oswald",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 44.0)),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    widget.myData.title + ' \$',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Oswald",
                                        fontSize: 43.0,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 6.0,
                          ),
                          Container(
                            child: Text(
                              widget.myData.description,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                            children: [
                              
                              Text('color:',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Oswald",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 24.0)),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: widget.myData.color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          InkWell(
                       
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                  child: Text(
                                    "Future Actions",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Oswald",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 0, top: 270, bottom: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black,
                          width: 30.0,
                        ),
                        image: new DecorationImage(
                          image: ExactAssetImage(widget.myData.image),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      width: double.infinity,
                      height: 200,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
