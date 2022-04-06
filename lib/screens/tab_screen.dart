import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls_screen.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/screens/message_screen.dart';
import 'package:whatsapp/screens/setting_screen.dart';
import 'package:whatsapp/screens/status_screen.dart';

class WhatsApp extends StatefulWidget {
  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double cameraWidth = Width / 24;
    double yourWidth = (Width - cameraWidth) / 5;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
            onSelected: (route) {
              // print(route);

              Navigator.pushNamed(context, route as String);
            },
            icon: Icon(Icons.more_vert_rounded),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("New group"),
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
              ),
              PopupMenuItem(
                child: Text("Linked devices"),
              ),
              PopupMenuItem(
                child: Text("Starred messages"),
              ),
              PopupMenuItem(
                child: Text("Payments"),
              ),
              PopupMenuItem(
                value: "/setting-screen",
                child: Text("Setting"),
              ),
            ],
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(
              horizontal: (Width - (cameraWidth + yourWidth * 3)) / 8),
          isScrollable: true,
          tabs: [
            Container(
              child: Center(child: Tab(icon: Icon(Icons.camera_alt))),
              width: cameraWidth,
            ),
            Container(
              child: Tab(
                text: "CHATS",
              ),
              width: yourWidth,
            ),
            Container(
              child: Tab(
                text: "STATUS",
              ),
              width: yourWidth,
            ),
            Container(
              child: Tab(
                text: "CALLS",
              ),
              width: yourWidth,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            child: Center(
              child: Text("camera"),
            ),
          ),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    );
  }
}
