import 'package:flutter/material.dart';
import 'bar.dart';
class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.red,
          title: Text('title git'),
          appBar: AppBar(),
          ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: (){Navigator.pushNamed(context, '/items');},
          child: Text('cat'),
          ),
          ),
    );
  }
}