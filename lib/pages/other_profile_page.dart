import 'package:flutter/material.dart';

class otherProfilePage extends StatefulWidget {
  const otherProfilePage({Key? key}) : super(key: key);

  @override
  State<otherProfilePage> createState() => _otherProfilePageState();
}

class _otherProfilePageState extends State<otherProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        title: const Text("UserName",
            style: TextStyle(color: Colors.amber, fontStyle: FontStyle.italic)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share_outlined,
                color: Colors.amber,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.amber,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Followers',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text('50',
                          style: TextStyle(
                              color: Colors.amber[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.13,
                    backgroundColor: Colors.amber[50],
                    child: Icon(
                      Icons.person,
                      size: MediaQuery.of(context).size.height * 0.070,
                      color: Colors.amber,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Following',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text('90',
                          style: TextStyle(
                              color: Colors.amber[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(250, 250, 250, 1),
                      borderRadius:
                      BorderRadius.all(Radius.circular(12))),
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('About',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                      Align(
                        alignment: Alignment.topLeft,
                          child: Text('\nFearless\nTravelling lover',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),))
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(250, 250, 250, 1),
                      borderRadius:
                      BorderRadius.all(Radius.circular(12))),
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      const Text('Interests',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: const TextField(
                          enabled: false,
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            hintText: 'Share your traveling routes...',
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(250, 250, 250, 1),
                      borderRadius:
                      BorderRadius.all(Radius.circular(12))),
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      const Text('Frequently Travels',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: const TextField(
                          enabled: false,
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            hintText: 'Share your traveling routes...',
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
