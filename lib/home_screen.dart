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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
