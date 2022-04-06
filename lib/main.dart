import 'package:flutter/material.dart';
import 'package:whatsapp/screens/call_detailscreen.dart';
import 'package:whatsapp/screens/message_screen.dart';
import 'package:whatsapp/screens/setting_screen.dart';
import 'package:whatsapp/screens/story_screen.dart';
import 'package:whatsapp/screens/tab_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (ctx) => WhatsApp(),
        MessageScreen.routeName: (ctx) => MessageScreen(),
        SettingScreen.routeName: (ctx) => SettingScreen(),
        CallDetailsScreen.routeName: (ctx) => CallDetailsScreen()
      },
    );
  }
}
