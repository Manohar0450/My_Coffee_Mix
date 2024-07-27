import 'package:flutter/material.dart';
import 'package:mycoffeemix/mainpage.dart';

import 'menucard.dart';

class NotificationsScreen extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'New Coffee Available!',
      description: 'A new blend has been added to our menu. Try our latest addition, the "Ethiopian Sunrise"!',
      date: 'July 25, 2024',
      actionText: 'View Details',
    ),
    NotificationItem(
      title: 'Special Discount',
      description: 'Get 20% off on your next order. Use the code COFFEE20 at checkout.',
      date: 'July 24, 2024',
      actionText: 'Redeem Now',
    ),
    NotificationItem(
      title: 'Order Ready for Pickup',
      description: 'Your customized coffee is ready for pickup at the nearest outlet.',
      date: 'July 24, 2024',
      actionText: 'View Order',
    ),
    NotificationItem(
      title: 'Subscription Renewal Reminder',
      description: 'Your coffee subscription will renew on July 30, 2024.',
      date: 'July 23, 2024',
      actionText: 'Manage Subscription',
    ),
    NotificationItem(
      title: 'Subscription Renewal Reminder',
      description: 'Your coffee subscription will renew on July 30, 2024.',
      date: 'July 23, 2024',
      actionText: 'Manage Subscription',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            child: ListTile(
              title: Text(notification.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notification.description),
                  SizedBox(height: 5),
                  Text(
                    notification.date,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              trailing: TextButton(
                child: Text(notification.actionText),
                onPressed: () {
                  // Handle button action
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [

          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              child: Icon(Icons.home,color: Colors.white,)),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
              },
              child: Icon(Icons.menu_book,color: Colors.white,)),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));
              },
              child: Icon(Icons.notification_add_rounded,color: Colors.orange,)),label: ''),
        ],),
    );
  }
}

class NotificationItem {
  final String title;
  final String description;
  final String date;
  final String actionText;

  NotificationItem({
    required this.title,
    required this.description,
    required this.date,
    required this.actionText,
  });
}
