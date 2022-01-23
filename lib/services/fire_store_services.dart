import 'package:exchange_app/models/ProductModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class fireStoreServices {
  String? uid = FirebaseAuth.instance.currentUser!.uid;
  fireStoreServices({this.uid});

  Stream<QuerySnapshot> get myProducts {
    return FirebaseFirestore.instance
        .collection("Users")
        .doc(uid)
        .collection("Products")
        .snapshots();
  }
}
