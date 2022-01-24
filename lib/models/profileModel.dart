import 'package:cloud_firestore/cloud_firestore.dart';

class Profile {
  String? Name;
  int? phone;

  Profile({this.Name, this.phone});

  Profile.fromSnapshot(snapshot)
      : Name = snapshot['name'],
        phone = snapshot['phone'];
}
