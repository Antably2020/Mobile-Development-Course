import 'package:exchange_app/models/userModel.dart';
import 'package:exchange_app/screens/Add_Product_screen.dart';
import 'package:exchange_app/screens/signup.dart';
import 'package:exchange_app/screens/viewProfile.dart';
import 'package:exchange_app/services/auth.dart';
import 'package:exchange_app/statefull_widgets/offer.dart';
import 'package:exchange_app/statefull_widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'login.dart';




class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {




    
    final authService = Provider.of<Auth>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return snapshot.data == null ? login() : home();
          } else {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          }
        });
  }
}
