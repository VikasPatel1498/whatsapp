import 'package:flutter/material.dart';
import 'package:whatsapp/models/data.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/models/users.dart';
import 'package:whatsapp/screens/story_screen.dart';

class StoryPage extends StatefulWidget {
  final User user;

  const StoryPage({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late PageController controller;

  @override
  void initState() {
    super.initState();

    final initialPage = users.indexOf(widget.user);
    controller = PageController(initialPage: initialPage);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PageView(
        controller: controller,
        children: users
            .map((user) => StoryWidget(
                  user: user,
                  controller: controller,
                ))
            .toList(),
      );
}
