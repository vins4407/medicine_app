/*
import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices {
  String collection = "users";

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<void> createUser(Map<String, dynamic> values) async {
    String id = values["id"];
    QuerySnapshot querySnapshot = await .collection("Members").get();
    _firestore.collection(collection).(id).setData(values);
  }
}
*/