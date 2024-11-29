import 'package:flutter/material.dart';
import '../models/notification.dart';
import 'package:intl/intl.dart';

class NotificationCard extends StatelessWidget {
  final AppNotification notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(
          Icons.circle,
          size: 12,
          color: notification.isRead ? Colors.grey : Colors.blue,
        ),
        title: Text(notification.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notification.message),
            Text(
              DateFormat('MMM dd, yyyy HH:mm').format(notification.date),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        onTap: () {
          // Handle notification tap
        },
      ),
    );
  }
}