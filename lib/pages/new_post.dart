import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'new_post_final_page.dart';

class NewPost extends StatefulWidget {
  const NewPost({super.key});

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  File? _image;
  final picker = ImagePicker();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'New Post',style: TextStyle(color: Colors.amber,fontStyle: FontStyle.italic),
        ),
        elevation: MediaQuery.of(context).size.height * 0.002,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              actionsAlignment: MainAxisAlignment.center,
              title: const Text('Select Image',),
              backgroundColor: const Color.fromRGBO(200, 200, 200, 1),
              actions: [
                Column(
                  children: [
                    TextButton(
                      child: const Text("Camera",style: TextStyle(color: Colors.red,fontSize: 18),),
                      onPressed: () {
                        getImage(ImageSource.camera);
                      },
                    ),
                    TextButton(
                      child: const Text("Gallery",style: TextStyle(color: Colors.red,fontSize: 18),),
                      onPressed: () {
                        getImage(ImageSource.gallery);
                      },
                    ),
                  ],
                ),
              ],
            ),
            const CircularProgressIndicator(color: Colors.amber, ),
          ],
        ),
      )
    );
  }
  Future getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DisplayImage(image: _image!),
          ),
        );
      } else {
        print('No image selected.');
      }
    });
  }
}
