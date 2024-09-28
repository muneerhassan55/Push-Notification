import 'package:flutter/material.dart';
import 'package:push_notifications/notification_sevices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationSevices notificationSevices = NotificationSevices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationSevices.requestNotificationPermission();
    notificationSevices.firebaseInit(context);
    notificationSevices.setupInteractMessage(context);
    // notificationSevices.isTokenRefresh();
    notificationSevices.getDeviceToken().then((value) {
      print('Device token ' + value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
