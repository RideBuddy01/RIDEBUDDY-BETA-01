import 'package:flutter/material.dart';

class storyPage extends StatefulWidget {
  const storyPage({super.key});

  @override
  State<storyPage> createState() => storyPageState();
}

class storyPageState extends State<storyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cancel_outlined,
                      size: MediaQuery.of(context).size.width * 0.090)),
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.055,
                child: Icon(
                  Icons.person,
                  color: Colors.amber,
                  size: MediaQuery.of(context).size.width * 0.055,
                ),
              ),
              Column(
                children: [
                  const Text('User_name'),
                  Text(
                    '25 mins',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.040),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
