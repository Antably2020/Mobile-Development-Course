import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:exchange_app/statefull_widgets/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: signuppage(),
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}
