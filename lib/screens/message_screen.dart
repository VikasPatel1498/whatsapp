import 'package:flutter/material.dart';
import 'package:whatsapp/models/data.dart';

class MessageScreen extends StatelessWidget {
  static const routeName = '/Message-screen';

  @override
  Widget build(BuildContext context) {
    final chatid = ModalRoute.of(context)!.settings.arguments as String;
    final selectedChat =
        dummy_data.firstWhere((element) => element.id == chatid);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[900],
        actions: [
          Row(
            children: [
              SizedBox(
                width: 50,
              )
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage(
                  selectedChat.imageUrl,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        selectedChat.title,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Online",
                        style: TextStyle(fontSize: 10, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/whatback.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
