import 'package:flutter/material.dart';
import 'package:ridebudysv0/pages/friend_chat_list_page.dart';
import 'package:ridebudysv0/pages/notification_page.dart';
import 'package:ridebudysv0/pages/postTile.dart';
import 'package:ridebudysv0/pages/storyTile.dart';


class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(Icons.local_taxi_rounded),
        title: const Text(
          'RideBudys',
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const notificationPage(),));
            },
            icon: const Icon(Icons.notifications),
          ),
          IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => friendChatList(),));}, icon: const Icon(Icons.send_sharp))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Divider(
            //   color: Colors.grey,
            //   thickness: MediaQuery.of(context).size.height * 0.001,
            // ),
            //Stories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StoryTile(),
                  StoryTile(),
                  StoryTile(),
                  StoryTile(),
                  StoryTile(),
                  StoryTile(),
                  StoryTile(),
                  StoryTile(),
                ],
              ),
            ),
             Divider(
                 color: Colors.black,
                 thickness: MediaQuery.of(context).size.height * 0.003,
                 endIndent: MediaQuery.of(context).size.width*0.01,
                 indent: MediaQuery.of(context).size.width*0.01,
             ),
            //Posts---------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            const PostTile(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const PostTile(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const PostTile(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const PostTile(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const PostTile(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const PostTile(),
          ],
        ),
      ),
    );
  }
}
