import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationSevices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: true,
        criticalAlert: true,
        provisional: true,
        sound: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User Granted Permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User Granted provisional  Permission');
    } else {
      print('User Denied Permission');
    }
  }
}
