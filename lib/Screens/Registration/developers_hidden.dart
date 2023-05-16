import 'package:flutter/material.dart';

class Hidden extends StatelessWidget {
  const Hidden({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Developers info"),
      ),
      body: const Center(child: Text('Mayank sharma and Bhuvneshwar Tyagi Created this whole fucking app')),
    );
  }
}
