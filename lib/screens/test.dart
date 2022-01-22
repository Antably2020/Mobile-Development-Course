import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class test extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: test2(title: 'Circular Profile Avatar'),
    );
  }
}

class test2 extends StatefulWidget {
  test2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _test2State createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // testing for child widget which is using FlutterLogo
              CircularProfileAvatar(
                '',
                child: FlutterLogo(),
                borderColor: Colors.purpleAccent,
                borderWidth: 2,
                elevation: 5,
                radius: 50,
              ),
              CircularProfileAvatar(
                '',
                child: Icon(
                  Icons.person,
                  size: 140,
                ),
                borderColor: Colors.black,
                borderWidth: 3,
                elevation: 5,
                radius: 75,
              ),
              CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWtMDksH9GzFdMinyAkGbtLJNx6xynLETTNN5akjxirL3QD5Rj',
                errorWidget: (context, url, error) => Container(
                  child: Icon(Icons.error),
                ),
                placeHolder: (context, url) => Container(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
                radius: 90,
                backgroundColor: Colors.transparent,
                borderWidth: 10,
//                  initialsText: Text(
//                    "AD",
//                    style: TextStyle(fontSize: 40, color: Colors.white),
//                  ),
                borderColor: Colors.red,
                imageFit: BoxFit.fitHeight,
                elevation: 5.0,
                onTap: () {
                  print('adil');
                },
                cacheImage: true,
                showInitialTextAbovePicture: false,
              ),
            ],
          ),
        ));
  }
}
