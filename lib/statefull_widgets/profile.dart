import 'package:exchange_app/services/auth.dart';
import 'package:exchange_app/shapes/bg_shape_profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

import 'package:exchange_app/statefull_widgets/Product_Description_widget.dart';
import 'package:exchange_app/models/item.dart';

class profile extends StatefulWidget {
  profile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<Auth>(context);

    return new Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            bg_shape_profile(),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Center(
                    child: Text(
                      'Mahmoud Zoair',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
                  child: Center(
                    child: CircularProfileAvatar(
                      '',
                      child: Container(
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: ExactAssetImage('assets/egypt.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        width: double.infinity,
                        height: 200,
                      ),
                      borderWidth: 3,
                      elevation: 10,
                      radius: 55,
                    ),
                  ),
                ),
                Row(),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: const Color.fromARGB(255, 12, 242, 180),
                      ),
                      labelText: "mahmoud zoair",
                    ),
                  ),
                ),
                Container(child: Divider(color: Colors.black)),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.date_range_outlined,
                        color: const Color.fromARGB(255, 12, 242, 180),
                      ),
                      labelText: "28/2/2000",
                    ),
                  ),
                ),
                Container(child: Divider(color: Colors.black)),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.phone_iphone,
                        color: const Color.fromARGB(255, 12, 242, 180),
                      ),
                      labelText: "+20 1144494566",
                    ),
                  ),
                ),
                Container(child: Divider(color: Colors.black)),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: const Color.fromARGB(255, 12, 242, 180),
                      ),
                      labelText: "mahmoudzoair@gmail.com",
                    ),
                  ),
                ),
                Container(child: Divider(color: Colors.black)),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: const Color.fromARGB(255, 12, 242, 180),
                      ),
                      labelText: "Password",
                    ),
                  ),
                ),
                Container(child: Divider(color: Colors.black)),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: ElevatedButton(
                      child: Text('Update'),
                      onPressed: () async {
                        await authService.signout();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(12, 242, 180, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),  Container(margin: EdgeInsets.fromLTRB(0, 100, 0, 0),),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.0),
      ],
    ));
  }
}
