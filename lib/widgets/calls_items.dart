import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/screens/call_detailscreen.dart';

class CallItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final DateTime dateTime;

  CallItem(
    this.id,
    this.title,
    this.imageUrl,
    this.dateTime,
  );
  final dateFormat = DateFormat('hh:mm a').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(CallDetailsScreen.routeName, arguments: id);
      },
      child: Ink(
        child: ListTile(
          leading: CircleAvatar(
            foregroundImage: AssetImage(imageUrl),
          ),
          title: Text(title),
          subtitle: Text(dateFormat),
          trailing: IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
