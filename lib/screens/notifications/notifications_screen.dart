import 'package:flutter/material.dart';
import '../../models/notification.dart';
import '../../widgets/notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummyNotifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(notification: dummyNotifications[index]);
        },
      ),
    );
  }
}

final List<AppNotification> dummyNotifications = [
  AppNotification(
    id: '1',
    title: 'New Violation',
    message: 'You have received a new violation ticket',
    date: DateTime.now(),
    isRead: false,
  ),
  // Add more dummy notifications as needed
];