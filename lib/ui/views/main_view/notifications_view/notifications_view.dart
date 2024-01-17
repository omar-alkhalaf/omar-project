import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  final Function openDrawer;

  const NotificationsView({
    super.key,
    required this.openDrawer,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          openDrawer();
        },
        child: Text(
          'Notifications',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
