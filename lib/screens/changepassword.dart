import 'package:exchange_app/stateless_widgets/changepass.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar.dart';

class changepassword extends StatelessWidget {
  const changepassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Change Password'),
        appBar: AppBar(),
      ),
      body: changepass(),
    );
  }
}
