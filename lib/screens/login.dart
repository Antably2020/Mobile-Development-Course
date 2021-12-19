import 'package:exchange_app/statefull_widgets/loginpage.dart';
import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Login'),
        appBar: AppBar(),
      ),
      body: loginpage(),
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}
