import 'package:flutter/material.dart';
import 'package:ridebudysv0/pages/other_profile_page.dart';

class searchPeopleTile extends StatelessWidget {
  final String userName;
  const searchPeopleTile({
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.95,
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const otherProfilePage(),));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.amber[50],
          radius: MediaQuery.of(context).size.width * 0.07,
          child: const Icon(
            Icons.person,
            color: Colors.amber,
          ),
        ),
        title: Text(
          userName,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
              fontWeight: FontWeight.w500,
            color: Colors.amber
          ),
        ),
      ),
    );
  }
}
