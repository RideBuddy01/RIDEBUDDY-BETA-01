import 'package:flutter/material.dart';

import '../utils/available_riders_tile.dart';

class availableRiderPage extends StatefulWidget {
  const availableRiderPage({super.key});

  @override
  State<availableRiderPage> createState() => _availableRiderPageState();
}

class _availableRiderPageState extends State<availableRiderPage> {
  List names = ['Adam', 'Harry', 'Joy', 'Ramen', 'Gotu'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: const Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.amber)),
          title: const Text(
            'Available Rides',
            style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.060,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.04)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Pickup Location',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.arrow_right_alt_outlined, color: Colors.black),
                      Text(
                        'Drop Location',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Today, 1 Seat',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey.shade400,
                  );
                },
                itemCount: names.length,
                itemBuilder: ((context, index) {
                  return availableRidersTile(
                    userName: names[index],
                  );
                }
                ),
            ),
          )
        ],
      ),
    );
  }
}
