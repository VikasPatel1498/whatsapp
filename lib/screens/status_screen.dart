// import 'package:flutter/material.dart';
// import 'package:whatsapp/models/data.dart';
// import 'package:whatsapp/models/users.dart';
// import 'package:whatsapp/screens/story_page.dart';
// import 'package:whatsapp/widgets/chat_items.dart';
// import 'package:whatsapp/widgets/status_items.dart';

// class StatusScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           // width: double.infinity,

//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: InkWell(
//                       onTap: () {},
//                       // splashColor: Colors.amber,
//                       child: Ink(
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             backgroundImage:
//                                 AssetImage("assets/images/image(2).jpeg"),
//                           ),
//                           title: Text("My status"),
//                           subtitle: Padding(
//                             padding: const EdgeInsets.only(top: 5),
//                             child: Text("Tap to add status update"),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 16, bottom: 10, top: 10),
//                     child: Text(
//                       "Recent updates",
//                       style: TextStyle(color: Colors.grey[600], fontSize: 13),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Container(
//                     // height: 500,
//                     child: ListView(
//                       // scrollDirection: Axis.vertical,
//                       children: users
//                           .map((user) => ListTile(
//                                 title: Text(
//                                   user.name,
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     // fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 leading: CircleAvatar(
//                                     backgroundImage: AssetImage(user.imgUrl)),
//                                 onTap: () {
//                                   Navigator.of(context).push(
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           StoryPage(user: user),
//                                     ),
//                                   );
//                                 },
//                               ))
//                           .toList(),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Container(
//               width: 45,
//               height: 45,
//               child: FloatingActionButton(
//                 heroTag: "Bt1",
//                 onPressed: () {},
//                 backgroundColor: Colors.green[900],
//                 child: Icon(Icons.edit),
//               ),
//             ),
//             Container(
//               // width: 55,
//               // height: 55,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 5.0),
//                 child: FloatingActionButton(
//                   onPressed: () {},
//                   backgroundColor: Colors.green[900],
//                   child: Icon(
//                     Icons.camera_alt,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/models/data.dart';
import 'package:whatsapp/models/users.dart';
import 'package:whatsapp/screens/story_page.dart';
import 'package:whatsapp/widgets/chat_items.dart';
import 'package:whatsapp/widgets/status_items.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/image(2).jpeg"),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.green[900],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  title: Text("My status"),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Tap to add status update"),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, bottom: 10, top: 10),
                      child: Text(
                        "Recent updates",
                        style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: users
                      .map((user) => ListTile(
                            title: Text(
                              user.name,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Text(
                                DateFormat('hh:mm a').format(DateTime.now())),
                            leading: CircleAvatar(
                                backgroundImage: AssetImage(user.imgUrl)),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => StoryPage(user: user),
                                ),
                              );
                            },
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 45,
              height: 45,
              child: FloatingActionButton(
                heroTag: "Bt1",
                onPressed: () {},
                backgroundColor: Colors.green[900],
                child: Icon(Icons.edit),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.green[900],
                  child: Icon(
                    Icons.camera_alt,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
