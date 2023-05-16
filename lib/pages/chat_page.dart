import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController chat = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.25,
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.amber,
                )),
            CircleAvatar(
              backgroundColor: Colors.yellow[100],
              radius: MediaQuery.of(context).size.width * 0.05,
              child: Icon(
                Icons.person,
                color: Colors.amber,
                size: MediaQuery.of(context).size.width * 0.055,
              ),
            )
          ],
        ),
        title: Text(
          'User_Name',
          style: TextStyle(
              color: Colors.amber,
              fontSize: MediaQuery.of(context).size.width * 0.060),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.amber,
                size: MediaQuery.of(context).size.width * 0.08,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_in_talk,
                color: Colors.amber,
                size: MediaQuery.of(context).size.width * 0.064,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.024,
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  'Your chats are end-to-end encrypted',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            Center(
              child: Text(
                "28 April 23",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.020,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Hello, Good Morning',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                Text(
                  'Are you reached at\npickup point?',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Yes!!',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Center(
              child: Text(
                "04 May 23",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.020,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Hii',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                Text(
                  'Are you reached at\npickup point?',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Yes!!',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.020,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                  radius: MediaQuery.of(context).size.width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: MediaQuery.of(context).size.width * 0.055,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                Text(
                  'Good then!!',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.95,
              child: TextField(
                cursorColor: Colors.amber,
                controller: chat,
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03,
                    //bottom:MediaQuery.of(context).size.height * 0.03, // HERE THE IMPORTANT PART
                  ),
                  suffixIcon: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.amber,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: Colors.amber,
                            ))
                      ],
                    ),
                  ),
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
                  hintText: 'Message...',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white60),
                ),
                textInputAction: TextInputAction.send,
                onSubmitted: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
