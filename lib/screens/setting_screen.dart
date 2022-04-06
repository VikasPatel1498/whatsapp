import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = "/setting-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        actions: [
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Ink(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 27,
                              backgroundImage:
                                  AssetImage("assets/images/image(2).jpeg"),
                            ),
                            title: Text(
                              "Vikas",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("status"),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.qr_code),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Ink(
                        child: ListTile(
                          leading: Icon(Icons.vpn_key_sharp),
                          title: Text("Account"),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Privacy,security,change number"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Ink(
                        child: ListTile(
                          leading: Icon(Icons.message_rounded),
                          title: Text("Chat"),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Theme, wallpapers, chat history"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Ink(
                        child: ListTile(
                          leading: Icon(Icons.notifications),
                          title: Text("Notifications"),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Message,group & call tones"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Ink(
                        child: ListTile(
                          leading: Icon(Icons.data_usage_rounded),
                          title: Text("Storage and data"),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Network usage, auto-download"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Ink(
                        child: ListTile(
                          leading: Icon(Icons.help_outline),
                          title: Text("Help"),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child:
                                Text("Help centre, contact us, privacy policy"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.grey,
                      child: Ink(
                        child: ListTile(
                          leading: Icon(Icons.supervisor_account_rounded),
                          title: Text("Invite a friend"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
