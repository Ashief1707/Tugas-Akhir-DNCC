import 'package:cek/style/ColorConfig.dart';
import 'package:flutter/material.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bghomepage,
      body: Padding(
        padding: EdgeInsets.only(top: 70, right: 20, left: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.settings),
                ),
              ],
            ),
            SizedBox(height: 30), 

            Expanded(
              child: ListView(
                children: [
                  NotificationItem(
                    title: "New Message",
                    message: "You have received a new message.",
                    icon: Icons.message,
                    timestamp: "5 min ago",
                  ),
                  NotificationItem(
                    title: "Friend Request",
                    message: "John Doe sent you a friend request.",
                    icon: Icons.person_add,
                    timestamp: "10 min ago",
                  ),
                  NotificationItem(
                    title: "Event Reminder",
                    message: "Don't forget your event tomorrow.",
                    icon: Icons.event,
                    timestamp: "1 day ago",
                  ),
                  NotificationItem(
                    title: "Update Available",
                    message: "A new update is available for download.",
                    icon: Icons.system_update,
                    timestamp: "3 days ago",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;
  final String timestamp;

  const NotificationItem({
    Key? key,
    required this.title,
    required this.message,
    required this.icon,
    required this.timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  timestamp,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
