import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  String uid;
  DatabaseServices(this.uid);

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  Future savingUserData(String message) async {
    return await userCollection.doc(uid).set({
      "uid": uid,
      "message": message,
    });
  }

  Future gettingUserData() async {
    QuerySnapshot snapshot =
        await userCollection.where("uid", isEqualTo: uid).get();
    return snapshot;
  }
}
