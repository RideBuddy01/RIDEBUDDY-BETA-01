import 'package:flutter/material.dart';

class verificationSuccessfulPage extends StatefulWidget {
  const verificationSuccessfulPage({super.key});

  @override
  State<verificationSuccessfulPage> createState() =>
      verificationSuccessfulPageState();
}

class verificationSuccessfulPageState
    extends State<verificationSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
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
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.admin_panel_settings_rounded,
                size: MediaQuery.of(context).size.width * 0.22,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.089,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.99,
              decoration: BoxDecoration(color: Colors.lightBlue[50]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('CONGRATULATIONS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      )),
                  Text('Your Account is Now Verified',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.055,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
