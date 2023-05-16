import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AuthImageUpload extends StatefulWidget {
  const AuthImageUpload({super.key});

  @override
  State<AuthImageUpload> createState() => _AuthImageUploadState();
}

class _AuthImageUploadState extends State<AuthImageUpload> {
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
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('RideBudys',style: TextStyle(color: Colors.amber),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Aadhar Verification',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.10,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.48,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(200, 200, 200, 1),
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.05)),
              child: Icon(
                color: Colors.black,
                    Icons.add_photo_alternate_rounded,
                    size: MediaQuery.of(context).size.width * 0.22,
                  ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                onPressed: () => getImage(ImageSource.gallery),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.grey[700]),
                child: Text(
                  'UPLOAD AADHAR FRONT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.045),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.48,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(200, 200, 200, 1),
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.05)),
              child: Icon(
                color: Colors.black,
                    Icons.add_photo_alternate_rounded,
                    size: MediaQuery.of(context).size.width * 0.22,
                  ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                onPressed: () => getImage(ImageSource.gallery),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.grey[700]),
                child: Text(
                  'UPLOAD AADHAR BACK',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.045),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
