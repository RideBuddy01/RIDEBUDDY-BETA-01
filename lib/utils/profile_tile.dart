import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String text;
  const ProfileTile({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.020),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.020,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.020,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: () {},
      onLongPress: () {},
    );
  }
}
