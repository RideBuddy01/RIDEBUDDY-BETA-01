import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../main_page.dart';

class RegistrationVerification extends StatefulWidget {
  const RegistrationVerification({Key? key}) : super(key: key);

  @override
  State<RegistrationVerification> createState() => _RegistrationVerificationState();
}

class _RegistrationVerificationState extends State<RegistrationVerification> {
  @override
  void initState(){
    sendemailVerification();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
          backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
          appBar: AppBar(
            elevation: 15,
            shadowColor: Colors.amberAccent,
            centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text('Ride Budys',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.amber),),
          ),
          //backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
                width: double.maxFinite,
                //color: Colors.redAccent,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(110, 110, 110, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Please Verify Your Email',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.amber),textAlign: TextAlign.center),
                    const Text('Notice : Please check your Email to verify',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.red),textAlign: TextAlign.center),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 20,
                            shadowColor: Colors.amberAccent,
                            side: const BorderSide(color: Colors.black,width: 1.5),
                            backgroundColor: Colors.amber,
                            fixedSize: const Size(390, 55),
                            shape: const StadiumBorder()
                        ),
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                          Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage(),));
                      },
                        child: const Text('Verified',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)),

                  ],
                )
            ),
          ),
        )
    );
  }
  Future sendemailVerification() async{
    try {
       await FirebaseAuth.instance.currentUser!.sendEmailVerification();

    } catch (e) {
      print(e.toString());
    }
  }
}

