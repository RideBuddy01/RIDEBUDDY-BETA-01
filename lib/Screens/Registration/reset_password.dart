import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ridebudysv0/Screens/Registration/developers_hidden.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);
  final _key = GlobalKey<FormState>();
  final _emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
          appBar: AppBar(
            elevation: 15,
            shadowColor: Colors.amber,
            centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text('Ride Budys',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.amber),),
          ),
          //backgroundColor: Colors.transparent,
          body: Center(
              child: Form(
                key: _key,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text('Enter the confirmation code',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      const Text('Notice : Please check your E-mails to reset your password',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.amber),textAlign: TextAlign.center),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.amber,
                        controller: _emailController,
                        validator: (value) {
                          if (value!.contains('@')) {
                            return null;
                          } else {
                            return 'Please enter a valid email address';
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.email,
                              size: 30,
                              color: Colors.amber,
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            suffixIcon: IconButton(
                              onPressed: (){
                                _emailController.clear();
                              },
                              icon: const Icon(Icons.clear),
                              color: Colors.amber,
                            ),
                            labelText: 'Registered Email Address',
                            labelStyle: const TextStyle(
                                color: Color.fromRGBO(150, 150, 150, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w700)),
                        style: const TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.amberAccent,
                              elevation: 15,
                              side: const BorderSide(color: Colors.amber,width: 1.5),
                              backgroundColor: Colors.amber,
                              fixedSize: const Size(390, 55),
                              shape: const StadiumBorder()
                          ),
                          onPressed: (){
                            if (_key.currentState!.validate()) {
                              if(_emailController.text.trim()=='Developer@mayank.bhuvneshwar'){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Hidden(),));
                              }
                              else{
                                FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
                              }
                            }
                          },
                          child: const Text("Request Reset",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black,),)),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: (){
                              Navigator.pop(context);
                          },
                          child: const Text("Back To Login Page",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.amber,),))
                    ],
                  ),
                ),
              ),
          ),
        )
    );
  }
}
