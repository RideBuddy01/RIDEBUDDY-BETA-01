import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ridebudysv0/Database.dart';


class rideDetalsConfirmation_page extends StatefulWidget {
  const rideDetalsConfirmation_page({Key? key,required this.date, required this.origin, required this.destination}) : super(key: key);
  final date;
  final String origin,destination;
  @override
  State<rideDetalsConfirmation_page> createState() => _rideDetalsConfirmation_pageState();
}

class _rideDetalsConfirmation_pageState extends State<rideDetalsConfirmation_page> {
  String day = '';
  String year='';
  String month='';
  String time='';
  bool check=false;
  List<String> monthname=[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      day=widget.date.toString().split('-')[2].split(' ')[0];
      year=widget.date.toString().split('-')[0];
      month=monthname[widget.date.month-1];
      time=widget.date.toString().split('-')[2].split(' ')[1].split('.')[0];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Ridebudys',
              style: TextStyle(color: Colors.amber, fontStyle: FontStyle.italic)),
      ),
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Text('Please Confirm the Ride Details\nEntered by You :-',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*0.022,
                  color: Colors.red,
                  fontWeight: FontWeight.w700

                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Text('${DateFormat('EEEE').format(widget.date)} $day $month $year',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height*0.024,
                    color: Colors.white60,
                    fontWeight: FontWeight.w700

                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(time,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height*0.024,
                              color: Colors.white60,
                              fontWeight: FontWeight.w700

                          ),
                        ),
                        Text(time,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height*0.024,
                              color: Colors.white60,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                    Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.origin,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height*0.024,
                              color: Colors.white60,
                              fontWeight: FontWeight.w700
                          ),textAlign: TextAlign.center,
                        ),
                        Text(widget.destination,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.024,
                            color: Colors.white60,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.circle,color: Colors.amber,),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.08,
                          child: const VerticalDivider(color: Colors.white60,width: 20,thickness: 2,),
                        ),
                        const Icon(Icons.circle,color: Colors.amber,)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.location_pin,size: 44,color: Colors.amber),),
                        Text('See Route',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height*0.02,
                              color: Colors.white60,
                              fontWeight: FontWeight.w700

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.width*0.94,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white60,
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text('Vehical details :-\nVitara Breeza (UP 14 CN 0134)',
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.width*0.055,color: Colors.white60,),
                      textAlign: TextAlign.center),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('    No. of Vacant seat :-   03',
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.055,fontWeight: FontWeight.w500,color: Colors.white60,),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('    Fare Demanded      :-   \$125',
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.055,fontWeight: FontWeight.w500,color: Colors.white60,),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Row(
                children: [
                  Checkbox(

                    activeColor: Colors.amber,
                    value: check,
                    onChanged: (bool ){ setState(() {
                      check= !check;
                    });},
                  ),
                  Text('I accept all Terms & Condtions.',
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.055,fontWeight: FontWeight.w500,color: Colors.white60,),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        side: const BorderSide(
                            color: Colors.black, width: 1.5),
                        backgroundColor: Colors.amber,
                        shape: const StadiumBorder()),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                          color: Colors.black, fontSize: 16),
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  onPressed: () async {
                    await DataBase().uploadoffer(widget.origin, widget.destination, widget.date.toString());
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      side: const BorderSide(
                          color: Colors.black, width: 1.5),
                      backgroundColor: Colors.amber,
                      shape: const StadiumBorder()),
                  child: const Text(
                    'Confirm & Publish',
                    style:
                    TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
