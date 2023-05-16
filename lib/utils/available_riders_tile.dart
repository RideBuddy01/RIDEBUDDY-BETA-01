import 'package:flutter/material.dart';
import 'package:ridebudysv0/pages/available_ride_detail_page.dart';

class availableRidersTile extends StatefulWidget {
  String userName;
  availableRidersTile({required this.userName, super.key});

  @override
  State<availableRidersTile> createState() => _availableRidersTileState();
}

class _availableRidersTileState extends State<availableRidersTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.95,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.amber[50],
          radius: MediaQuery.of(context).size.width * 0.07,
          child: Icon(
            Icons.person,
            color: Colors.amber[300],
          ),
        ),
        title: Text(
          widget.userName,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
              fontWeight: FontWeight.w400,
          color: Colors.white60),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [Text('Departure',style: TextStyle(color: Colors.amber)), Text('04:00 AM/PM',style: TextStyle(color: Colors.white60))],
            ),
            const Text(
              '\$XXX',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const availableRideDetailPage(),));
        },
      ),
    );
  }
}
