import 'package:flutter/material.dart';

class notificationPage extends StatefulWidget {
  const notificationPage({super.key});

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 28, 28, 1),
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {Navigator.pop(context);},
                icon: const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.amber)),
            title: const Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            )),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Row(
                children: [
                  Text(
                    "  Today",
                    style: TextStyle(
                      color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.065),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.085,
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                  decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.04)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Ride request from XYZ: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.040,
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              side: const BorderSide(color: Colors.black)
                            ),
                            onPressed: () {},
                            child: const Text(
                              'ACCEPT',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                            ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.040,
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                side: const BorderSide(color: Colors.black)
                            ),
                            onPressed: () {},
                            child: const Text(
                              'DENY',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                            ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.085,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.04)),
                child: Center(
                  child: Text(
                    'NOTIFICATION 2',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.040),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Row(
                children: [
                  Text(
                    "  This Week",
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.065),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.085,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.04)),
                child: Center(
                  child: Text(
                    'NOTIFICATION 1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.040),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.085,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.04)),
                child: Center(
                  child: Text(
                    'NOTIFICATION 2',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.040),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.085,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.04)),
                child: Center(
                  child: Text(
                    'NOTIFICATION 3',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.040),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.085,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.04)),
                child: Center(
                  child: Text(
                    'NOTIFICATION 4',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.040),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Row(
                children: [
                  Text(
                    "  Earlier",
                    style: TextStyle(
                      color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.065),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.085,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.04)),
                child: Center(
                  child: Text(
                    'NOTIFICATION 1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.040),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
