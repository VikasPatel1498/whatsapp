import 'package:flutter/material.dart';
import 'package:whatsapp/models/data.dart';
import 'package:whatsapp/widgets/calls_items.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: dummy_data
              .map(
                (e) => CallItem(
                  e.id,
                  e.title,
                  e.imageUrl,
                  e.dateTime,
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[900],
        child: Icon(Icons.add_ic_call),
      ),
    );
  }
}
