import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/screens/message_screen.dart';

class ChatItem extends StatelessWidget {
  final String id;
  final String title;
  final String message;
  final String imageUrl;
  final DateTime dateTime;
  ChatItem(
    this.id,
    this.title,
    this.message,
    this.imageUrl,
    this.dateTime,
  );
  final dateFormat = DateFormat('hh:mm a').format(DateTime.now());
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MessageScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Ink(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              imageUrl,
            ),
          ),
          title: Text(title),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(message),
          ),
          trailing: Text(dateFormat),
        ),
      ),
    );
  }
}
