import 'package:exchange_app/stateless_widgets/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Create account'),
        appBar: AppBar(),
      ),
      body: signuppage(),
    );
  }
}
