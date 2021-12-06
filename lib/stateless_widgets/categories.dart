import 'package:flutter/material.dart';
import 'bar.dart';
class categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
          title: Text('title2'),
          appBar: AppBar(),
          widgets: <Widget>[Icon(Icons.arrow_back)],
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