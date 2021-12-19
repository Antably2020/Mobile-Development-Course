import 'package:exchange_app/statefull_widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';

class viewProfile extends StatelessWidget {
  const viewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Profile'),
        appBar: AppBar(),
      ),
      body: profile(),
    );
  }
}
