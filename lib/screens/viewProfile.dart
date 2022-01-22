import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:exchange_app/statefull_widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';

class viewProfile extends StatelessWidget {
  const viewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
               appBar: new AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
              titleSpacing: 0,
              title: new Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
             extendBodyBehindAppBar: true,
           body: profile(title: 'My Profile',),
      bottomNavigationBar: nav_bar_widget(),
          ),
        ],
      ),
 
     
    );
  }
}
