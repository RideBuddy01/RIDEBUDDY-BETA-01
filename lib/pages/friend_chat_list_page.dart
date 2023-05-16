import 'package:flutter/material.dart';

import '../utils/friend_chat_tile.dart';

class friendChatList extends StatefulWidget {
  friendChatList({super.key});

  @override
  State<friendChatList> createState() => _friendChatListState();
}

class _friendChatListState extends State<friendChatList> {
  final chatList = [
    'Romen',
    'Siri',
    'Adam',
    'Tommy',
    'Bhai',
    'Romen',
    'Siri',
    'Adam',
    'Tommy',
    'Bhai'
  ];
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.amber),
        ),
        title: const Text(
          'User_Name',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_document, color: Colors.amber),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.95,
              child: TextField(
                cursorColor: Colors.amber,
                controller: _searchController,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white60),
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.25)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.25),
                  ),
                  contentPadding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.0125),
                  hintText: 'Search Friends',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white60),
                ),
                textInputAction: TextInputAction.search,
                onSubmitted: (value) {},
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return friendChatTile(userName: chatList[index]);
                }),
          )
        ],
      ),
    );
  }
}
