import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ridebudysv0/Screens/Registration/registration_verification.dart';
import 'login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = true;
  @override

  void initState() {
    super.initState();
    _passwordVisible = true;
    _emailContoller.addListener(() => setState(() {}));
    _passwordController.addListener(() => setState(() {}));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        shadowColor: Colors.amber,
        elevation: 15,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text('Ride Budys',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.amber)),
      ),
      //backgroundColor: Colors.transparent,
      body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    key: _key,
                    child: Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Create Account',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.amber)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.1,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.95,
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromRGBO(110, 110, 110, 1),
                                border: Border.all(color: Colors.amber,width: 1.5),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 20,
                                      blurStyle: BlurStyle.outer,
                                      color: Colors.amberAccent,
                                      offset: Offset(1, 1)
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.amber,
                                  controller: _emailContoller,
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
                                          _emailContoller.clear();
                                        },
                                        icon: const Icon(Icons.clear),
                                        color: Colors.amber,
                                      ),
                                      labelText: 'Email Address',
                                      labelStyle: const TextStyle(
                                          color: Colors.black45,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*0.003,
                                ),
                                TextFormField(
                                  textAlign: TextAlign.center,
                                  obscureText: _passwordVisible,
                                  controller: _passwordController,
                                  cursorColor: Colors.amber,
                                  validator: (value) {
                                    if (value.toString().length <6) {
                                      return ('Password must be 6-digit long');
                                    } else {
                                      return null;
                                    }
                                  },
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.lock_outline,
                                      size: 30,
                                      color: Colors.amber,
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.amber),
                                    ),
                                    focusColor: Colors.amber,
                                    labelText: 'Password',
                                    labelStyle: const TextStyle(
                                        color: Colors.black45,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        // Based on passwordVisible state choose the icon
                                        _passwordVisible
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.amber,
                                      ),
                                      onPressed: () {
                                        setState(
                                              () {
                                            _passwordVisible = !_passwordVisible;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*0.027,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.amberAccent,
                                      elevation: 20,
                                      side: const BorderSide(color: Colors.black,width: 1.5),
                                      backgroundColor: Colors.amber,
                                      fixedSize: const Size(390, 55),
                                      shape: const StadiumBorder()
                                  ),
                                  onPressed: () async {
                                    if (_key.currentState!.validate()) {
                                      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailContoller.text.trim(), password: _passwordController.text.trim());
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const RegistrationVerification(),));
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'Sign Up',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black,),
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward_sharp,color: Colors.black,size: 18,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.2,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>
                          const Login(),));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Already have an account? ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(150, 150, 150, 1)),textAlign: TextAlign.center),
                          Text("Login",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amber
                              ),textAlign: TextAlign.center),
                        ],
                      )
                  ),

                ],
              ),
            ),
          ),
      ),
    );
  }

}
