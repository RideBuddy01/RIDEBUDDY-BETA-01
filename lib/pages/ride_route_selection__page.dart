import 'package:flutter/material.dart';

class rideRouteSelectionPage extends StatefulWidget {
  const rideRouteSelectionPage({super.key});

  @override
  State<rideRouteSelectionPage> createState() => _rideRouteSelectionPageState();
}

class _rideRouteSelectionPageState extends State<rideRouteSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.amber,
            )),
        title: const Text(
          'RideBudys',
          style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Text(
              'Choose your preffered path',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025),
            ),
            const Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text(
              'Route 1 (via Expressway)',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.020),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text(
              'Route 2 (via City Center)',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.020),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.055,
              width: MediaQuery.of(context).size.width * 0.65,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.065),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
