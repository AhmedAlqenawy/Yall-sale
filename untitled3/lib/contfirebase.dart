import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FireShop {
  bool auth() {
    return FirebaseAuth.instance.currentUser() != null ? true : false;
  }

  Future<void> CreateOrAddShop(data) async{
    if(auth()){
      Firestore.instance.collection('shop').add(data);
    }
  }
  getShops() async{
    return await  Firestore.instance.collection('shop').getDocuments();
  }


}
class Fireproduct {
  bool auth() {
    return FirebaseAuth.instance.currentUser() != null ? true : false;
  }


  Future<void> CreateOrAddSroduct(data) async{
    if(auth()){
      Firestore.instance.collection('shop').add(data);
    }
  }

  getProduct() async{
    return await  Firestore.instance.collection('product').getDocuments();
  }

}