import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/models/users.dart';
import 'package:whatsapp/screens/story_page.dart';
import 'package:whatsapp/screens/story_screen.dart';

class StatusItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final DateTime dateTime;
  StatusItems(
    this.id,
    this.title,
    this.imageUrl,
    this.dateTime,
  );

  // void selectStatus(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed(StoryWidget.routeName, arguments: id);
  //   //     .then((result) {
  //   //   if (result != null) {
  //   //     // removeItem(result);
  //   //   }
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: users
            .map(
              (user) => ListTile(
                title: Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                leading: CircleAvatar(backgroundImage: AssetImage(user.imgUrl)),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => StoryPage(user: user),
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
