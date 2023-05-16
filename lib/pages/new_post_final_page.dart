import 'package:flutter/material.dart';
import 'dart:io';

class DisplayImage extends StatelessWidget {
  final File image;
  TextEditingController TextController = TextEditingController();
  TextEditingController tag = TextEditingController();
  TextEditingController loc = TextEditingController();

  DisplayImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'New Post',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.93,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.075,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: TextField(
                    cursorColor: Colors.amber,
                    controller: TextController,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.amber),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.03,
                        //bottom:MediaQuery.of(context).size.height * 0.03, // HERE THE IMPORTANT PART
                      ),
                      suffixIcon: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
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
                      hintText: 'Add Caption...',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white60),
                    ),
                    textInputAction: TextInputAction.send,
                    onSubmitted: (value) {},
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: TextField(
                          cursorColor: Colors.amber,
                          controller: tag,
                          textAlign: TextAlign.start,
                          style: const TextStyle(color: Colors.amber),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.03,
                              //bottom:MediaQuery.of(context).size.height * 0.03, // HERE THE IMPORTANT PART
                            ),
                            suffixIcon: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white60),
                                borderRadius: BorderRadius.circular(
                                    MediaQuery.of(context).size.width * 0.25)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.amber,
                              ),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * 0.25),
                            ),
                            hintText: 'Tag your buddies...',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60),
                          ),
                          textInputAction: TextInputAction.send,
                          onSubmitted: (value) {},
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: TextField(
                          cursorColor: Colors.amber,
                          controller: TextController,
                          textAlign: TextAlign.start,
                          style: const TextStyle(color: Colors.amber),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.03,
                              //bottom:MediaQuery.of(context).size.height * 0.03, // HERE THE IMPORTANT PART
                            ),
                            suffixIcon: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white60),
                                borderRadius: BorderRadius.circular(
                                    MediaQuery.of(context).size.width * 0.25)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.amber,
                              ),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * 0.25),
                            ),
                            hintText: 'Add Location...',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60),
                          ),
                          textInputAction: TextInputAction.send,
                          onSubmitted: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {Navigator.pop(context);},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.white10,
                        foregroundColor: Colors.amber,
                      ),
                      child: const Text('POST'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
