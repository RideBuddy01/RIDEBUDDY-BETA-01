import 'package:flutter/material.dart';

class availableRideDetailPage extends StatefulWidget {
  const availableRideDetailPage({super.key, this.date});
  final date;
  @override
  State<availableRideDetailPage> createState() =>
      _availableRideDetailPageState();
}

class _availableRideDetailPageState extends State<availableRideDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.23,
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.amber,
                )),
            CircleAvatar(
              backgroundColor: Colors.yellow[100],
              radius: MediaQuery.of(context).size.width * 0.05,
              child: Icon(
                Icons.person,
                color: Colors.amber,
                size: MediaQuery.of(context).size.width * 0.055,
              ),
            )
          ],
        ),
        title: Text(
          'User_Name',
          style: TextStyle(
              color: Colors.amber,
              fontSize: MediaQuery.of(context).size.width * 0.050),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.amber,
                size: MediaQuery.of(context).size.width * 0.07,
              )),
        ],
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Sunday 22 April 2023',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height*0.033,
                    color: Colors.red,
                    fontWeight: FontWeight.w700

                ),
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
                      Text('12:00',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.024,
                            color: Colors.white60,
                            fontWeight: FontWeight.w700

                        ),
                      ),
                      Text('12:00',
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
                      Text('Origin',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.024,
                            color: Colors.white60,
                            fontWeight: FontWeight.w700
                        ),textAlign: TextAlign.center,
                      ),
                      Text('Destination',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text('Price Per Passenger',style: TextStyle(color: Colors.white60,fontSize: 22,fontWeight: FontWeight.w700)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    const Text('No. Of Seats Available:- 03',style: TextStyle(color: Colors.white60,fontSize: 15,fontWeight: FontWeight.w700)),
                  ],
                ),
                const Text('\u{20B9}XXX',style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.w700))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.12,
              width: MediaQuery.of(context).size.width*0.98,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white60,
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
              child: Row(
                children: [
                  
                  CircleAvatar(
                    backgroundColor: Colors.yellow[100],
                    radius: MediaQuery.of(context).size.width * 0.068,
                    child: Icon(
                      Icons.person,
                      color: Colors.amber,
                      size: MediaQuery.of(context).size.width * 0.055,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.03,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('User ABC',style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w700,fontSize: 20),),
                      Row(
                        children: const [
                          Text('Verifies',style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w600),),
                          Icon(Icons.verified_user_sharp,color: Colors.amber,size: 20,)
                        ],
                      ),
                    ],
                  )
                ],
              )
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
                ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () async {
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
