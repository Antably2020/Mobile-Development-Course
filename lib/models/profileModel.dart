<<<<<<< HEAD

class profile_model{
  final String Name;
  final String Phone;
  final String id;
  
  profile_model(this.Name, this.Phone, this.id);
  
  Map<String, dynamic> toJson() => {
        'name': Name,
        'phone': Phone,
        'id': id,
      };

  static profile_model fromJson(Map<String, dynamic> json) => profile_model(
    json['name'],
    json['phone'],
    json['id'],

  );
}
=======
import 'package:cloud_firestore/cloud_firestore.dart';

class Profile {
  String? Name;
  int? phone;

  Profile({this.Name, this.phone});

  Profile.fromSnapshot(snapshot)
      : Name = snapshot['name'],
        phone = snapshot['phone'];
}
>>>>>>> a20e04e3328c9003d3cbd74780ea0eabb6810c0a
