import 'package:flutter/material.dart';
import 'bar.dart';
class categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
          title: Text('title 2 kareemm'),
          appBar: AppBar(),
          ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: (){Navigator.pushNamed(context, '/');},
          child: Text('home'),
          ),
          ),
    );
  }
}