import 'package:exchange_app/stateless_widgets/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Login'),
        appBar: AppBar(),
      ),
      body: loginpage(),
    );
  }
}
