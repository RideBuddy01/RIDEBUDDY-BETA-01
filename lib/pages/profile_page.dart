import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'auth_image_upload.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _showOverlay = true;
  bool aboutenb = false;
  bool interestenb = false;
  bool travelsenb = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
          child: _showOverlay
              ?
          SizedBox(
            height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery.of(context).size.width*0.95,
              child: AlertDialog(
                actionsAlignment: MainAxisAlignment.spaceBetween,
                content: const Text('Please Validate Your Aadhaar Card to Take a Ride'),
                title: const Text('Complete your KYC'),
                actions: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _showOverlay=!_showOverlay;
                        });
                      },
                      child: const Text('Skip',style: TextStyle(color: Colors.red),)),
                  TextButton(
                    onPressed: () {
                      // Navigate to Aadhaar card submission page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AuthImageUpload(),
                        ),
                      );
                    },
                    child: const Text('Validate Aadhaar Card',style: TextStyle(color: Colors.amber),),
                  ),
                ],
              ),
          )
              :
          Column(
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
                height: MediaQuery.of(context).size.height * 0.055,
                width: MediaQuery.of(context).size.width * 0.9,
                child: LiquidLinearProgressIndicator(
                  value: 0.69, // Defaults to 0.5.
                  valueColor: const AlwaysStoppedAnimation(Colors
                      .green), // Defaults to the current Theme's accentColor.
                  backgroundColor: Colors.amber[
                  50], // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.amber,
                  borderWidth: 5.0,
                  borderRadius: 12.0,
                  direction: Axis.horizontal,
                  // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                  center: const Text("Profile Completion Level (69%)",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: Colors.amber),
                  onPressed: () {},
                  child: const Text('Edit Profile',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700,color: Colors.black)),
                ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('    About',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  aboutenb = !aboutenb;
                                });
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.amber,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            enabled: aboutenb,
                            hintText: 'Tell About yourself...',
                            hintStyle: const TextStyle(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('    Interest',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  interestenb = !interestenb;
                                });
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.amber,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            enabled: interestenb,
                            hintText: 'Adventure...',
                            hintStyle: const TextStyle(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('    Frequently Travels',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  travelsenb = !travelsenb;
                                });
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.amber,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            enabled: travelsenb,
                            hintText: 'Share your traveling routes...',
                            hintStyle: const TextStyle(
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
/*
Container(
                color: Colors.grey[900]?.withOpacity(0.9),
                child: Center(
                  child: Container(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Please Validate Your Aadhaar Card to Take a Ride',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.045),
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to Aadhaar card submission page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AuthImageUpload(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[900],
                            foregroundColor: Colors.yellowAccent[700],
                          ),
                          child: const Text('Validate Aadhaar Card'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
* */
