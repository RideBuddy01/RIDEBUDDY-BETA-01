import 'package:flutter/material.dart';
import 'package:ridebudysv0/pages/chat_page.dart';

class friendChatTile extends StatefulWidget {
  final String userName;
  const friendChatTile({
    required this.userName,
    super.key,
  });

  @override
  State<friendChatTile> createState() => _friendChatTileState();
}

class _friendChatTileState extends State<friendChatTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.95,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.amber[50],
          radius: MediaQuery.of(context).size.width * 0.07,
          child: Icon(
            Icons.person,
            color: Colors.amber[300],
          ),
        ),
        title: Text(
          widget.userName,
          style: TextStyle(
            color: Colors.amber,
              fontSize: MediaQuery.of(context).size.width * 0.05,
              fontWeight: FontWeight.w400),
        ),
        trailing: const Text(
          '(2)',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => chatPage(),));},
      ),
    );
  }
}
