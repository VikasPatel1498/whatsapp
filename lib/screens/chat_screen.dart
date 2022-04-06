import 'package:flutter/material.dart';
import 'package:whatsapp/models/data.dart';
import 'package:whatsapp/screens/message_screen.dart';
import 'package:whatsapp/widgets/chat_items.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dummy_data
            .map(
              (e) => ChatItem(
                e.id,
                e.title,
                e.message,
                e.imageUrl,
                e.dateTime,
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[900],
        child: Center(
          child: Icon(
            Icons.message_rounded,
            size: 25,
          ),
        ),
      ),
    );
  }
}
