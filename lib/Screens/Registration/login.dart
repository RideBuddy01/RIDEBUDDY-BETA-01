import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'reset_password.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _passwordVisible=true;
  Future signIn()  async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
    Navigator.pop(context);
  }


  void initstate() {
    super.initState();
    passwordController.addListener(() => setState(() {}));
    emailController.addListener(() => setState(() {}));
    _passwordVisible=true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        elevation: 15,
        shadowColor: Colors.amber,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Center(
            child: Text('Ride Budys',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.amber))),
        //actions: [],
      ),
      //backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.25,
                      ),
                      Container(
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
                              controller: emailController,
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
                                      emailController.clear();
                                    },
                                    icon: const Icon(Icons.clear),
                                    color: Colors.amber,
                                  ),
                                  labelText: 'Email Address',
                                  labelStyle: const TextStyle(
                                      color: Colors.black45,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.001,
                            ),
                            TextFormField(
                              textAlign: TextAlign.center,
                              obscureText: _passwordVisible,
                              controller: passwordController,
                              cursorColor: Colors.amber,
                              validator: (value) {
                                if (value.toString().length <6) {
                                  return ('Minimum Password length is six');
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
                                focusColor: Colors.black,
                                labelText: 'Password',
                                labelStyle: const TextStyle(
                                    color: Colors.black45,
                                    fontSize: 18,
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
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  side: const BorderSide(color: Colors.amber,width: 1.5),
                                  backgroundColor: Colors.amber,
                                  fixedSize: const Size(390, 55),
                                  shape: const StadiumBorder()
                              ),
                              onPressed: () {
                                if (_key.currentState!.validate())
                                {
                                  signIn();
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
                                      'Log In',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black,),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_sharp,color: Colors.black,size: 18,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.18,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword(),));
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,
                          padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 25),
                        ),
                        child: const Text('Forgot Password ?',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.amber)),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.amber,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Don't have an account? ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(150, 150, 150, 1))),
                              Text("SignUp",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.amber)),
                            ],
                          )
                      ),

                    ],
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
