import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchange_app/models/ProductModel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class addProductFire {
  Product _prod = Product();

  void addprod(title, tradedWith, Cat, Desc) async {
    _prod.title = title;
    _prod.tradeWith = tradedWith;
    _prod.category = Cat;
    _prod.description = Desc;

    String uid = FirebaseAuth.instance.currentUser!.uid;

    await FirebaseFirestore.instance
        .collection('Users')
        .doc(uid)
        .collection("Products")
        .add(_prod.toJson());
  }
}
