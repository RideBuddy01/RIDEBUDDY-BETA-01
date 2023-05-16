import 'package:flutter/material.dart';

class rideFarePage extends StatefulWidget {
  const rideFarePage({super.key});

  @override
  State<rideFarePage> createState() => _rideFarePageState();
}

class _rideFarePageState extends State<rideFarePage> {
  int num = 125;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.amber,
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'RideBudys',
          style: TextStyle(
            color: Colors.amber,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.095,
            child: Text(
                'According To Your Travelling Distance and Preffered\nRoute Conditions , The Fare for one seat should be in\nbetween',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.043,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.055,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  child: Text(
                    '\$100',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.065),
                  ),
                ),
              ),
              Text(
                'AND',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.060),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.055,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  child: Text(
                    '\$150',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.060),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Text(
            'Enter Your Desired Fare',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.056,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '(should be in between prescribed amount)',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.050,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.02)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        num <= 150 ? num = num + 1 : num = 125;
                      });
                    },
                    icon: Icon(Icons.add,
                        size: MediaQuery.of(context).size.width * 0.10)),
                SizedBox(width: MediaQuery.of(context).size.width * 0.10),
                Text(
                  '\$${num}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.060),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.10),
                IconButton(
                    onPressed: () {
                      setState(() {
                        num > 100 ? num = num - 1 : num = 100;
                      });
                    },
                    icon: Icon(Icons.remove,
                        size: MediaQuery.of(context).size.width * 0.10)),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Text(
            'Note:- We do not promote profit making through car pooling.',
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.width * 0.042),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
          ),
          Expanded(
              child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.99,
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                child: Text('NEXT',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.060,
                    ))),
          ))
        ],
      ),
    );
  }
}
