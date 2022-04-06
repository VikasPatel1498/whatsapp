import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/models/data.dart';

class CallDetailsScreen extends StatelessWidget {
  static const routeName = "/call-details";

  @override
  Widget build(BuildContext context) {
    final chatid = ModalRoute.of(context)!.settings.arguments as String;
    final selectedChat =
        dummy_data.firstWhere((element) => element.id == chatid);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        actions: [
          SizedBox(
            width: 50,
          ),
          Center(
              child: Text(
            "Call info",
            style: TextStyle(fontSize: 20),
          )),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.message_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(selectedChat.imageUrl),
              ),
              title: Text(selectedChat.title),
              subtitle: Text("status"),
              trailing: Container(
                width: 100,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Colors.green[900],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam_rounded,
                        color: Colors.green[900],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(DateFormat('hh:mm a').format(DateTime.now())),
              ),
            ],
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_upward_sharp,
                  color: Colors.green[900],
                )),
            title: Text("Outgoing"),
            subtitle: Text(DateFormat('hh:mm a').format(DateTime.now())),
            trailing: Container(
              width: 100,
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Text("3.54"), Text("11.4 MB")],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
