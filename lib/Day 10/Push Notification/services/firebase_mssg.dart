import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessage {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final fcm = await _firebaseMessaging.getToken();
    print("FCM TOKEN: ${fcm}");
    //FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage)
  }
}
