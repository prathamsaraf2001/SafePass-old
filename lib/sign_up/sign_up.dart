import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:safe_pass/drawer/profile.dart';

import 'complete_profile.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final FirebaseAuth _signInAuth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  bool _isObscure = true;
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _usernameController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ProximaSoft',
                ),
              ),
              // Image.asset("assets/images/lock.png"),
              SizedBox(
                height: 60,
              ),
              Text(
                "Register Account",
                style: TextStyle(
                  color: Colors.teal[400],
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ProximaSoft',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Complete your details or continue\nwith social media.",
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email address.';
                        }
                        return null;
                      },
                      controller: _usernameController,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 4,
                            borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 10,
                            borderSide: BorderSide()),
                        hintText: "Enter your your email",
                        labelText: "Email",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/icons/username.gif",
                            height: 10,
                            scale: 6,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 2,
                            borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 4,
                            borderSide: BorderSide()),
                        hintText: "Enter Password",
                        labelText: "Password",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/icons/password.gif",
                            height: 1,
                            width: 1,
                            scale: 8,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 2,
                            borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 4,
                            borderSide: BorderSide()),
                        hintText: "Re-Enter Password",
                        labelText: "Confirm Password",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/icons/password.gif",
                            height: 1,
                            width: 1,
                            scale: 8,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // _signInAuth
                  //     .createUserWithEmailAndPassword(
                  //       email: _usernameController.text,
                  //       password: _passwordController.text,
                  //     )
                  //     .then((value) => {
                  //           FirebaseFirestore.instance
                  //               .collection('UserData')
                  //               .doc(value.user!.uid)
                  //               .set({"email": value.user!.email})
                  //         });
                  _sendDataToSecondScreen(context);
                },
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[300],
                  textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ProximaSoft"),
                  padding: EdgeInsets.symmetric(horizontal: 118, vertical: 15),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: (SvgPicture.asset(
                      "assets/icons/google-icon.svg",
                      height: 50,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: (SvgPicture.asset(
                      "assets/icons/twitter.svg",
                      height: 50,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: (Image.asset(
                      "assets/icons/facebook.png",
                      height: 1000,
                      // scale: 0.5,
                    )),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Spacer(),
                  Text(
                    "By continuing you confirm that you agree\nwith our Terms and Conditions",
                    style: TextStyle(color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     "Sign Up",
                  //     style: TextStyle(color: Colors.teal[500]),
                  //   ),
                  // ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    String text1 = _usernameController.text;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CompleteProfile(
            emailHolder: text1,
          ),
        ));
  }
}
