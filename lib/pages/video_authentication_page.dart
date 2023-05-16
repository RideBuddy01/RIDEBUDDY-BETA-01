import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class videoAuthenticationPage extends StatefulWidget {
  const videoAuthenticationPage({super.key});

  @override
  State<videoAuthenticationPage> createState() =>
      _videoAuthenticationPageState();
}

class _videoAuthenticationPageState extends State<videoAuthenticationPage> {
  File? _image;
  final picker = ImagePicker();

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => DisplayImage(image: _image!),
        //   ),
        // );
      } else {
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.065),
              )),
        ],
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'RideBudys',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.10,
                color: Colors.yellow[600],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.03)),
              child: Icon(
                Icons.play_circle_outline,
                size: MediaQuery.of(context).size.width * 0.22,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                onPressed: () => getImage(ImageSource.gallery),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[400],
                    foregroundColor: Colors.grey[700]),
                child: Text(
                  'UPLOAD VIDEO SELFIE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.045),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.lightBlue[50]),
                child: const Text(
                    'You will be asked to do a certain task in the video selfie in order to  verify the user authenticity.',
                    textAlign: TextAlign.center),
              ),
            )
          ],
        ),
      ),
    );
  }
}
