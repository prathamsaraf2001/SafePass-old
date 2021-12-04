import 'package:flutter/material.dart';
import 'package:safe_pass/homepage/NotesPage.dart';
import 'package:safe_pass/log_in/methods.dart';
import 'package:safe_pass/sign_up/sign_up.dart';
import 'forgot_password.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
// final GoogleSignIn googleSignIn = GoogleSignIn();

final TextEditingController _email = TextEditingController();
final TextEditingController _password = TextEditingController();
bool isLoading = false;

class _LoginPageState extends State<LoginPage> {
  @override
  bool _isObscure = true;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Log In",
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
              "Welcome Back!",
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
              "Sign in with your email and password\nor continue with social media.",
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
                      hintText: "Enter Username",
                      labelText: "Username",
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
                        color: Colors.white,
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
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "ProximaSoft"),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          "ForgotPassword.id",
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "ProximaSoft"),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
                      setState(() {
                        isLoading = true;
                      });

                      logIn(_email.text, _password.text).then((user) {
                        if (user != null) {
                          print("Login Sucessfull");
                          setState(() {
                            isLoading = false;
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => NotesPage()));
                        } else {
                          print("Login Failed");
                          setState(() {
                            isLoading = false;
                          });
                        }
                      });
                    } else {
                      print("Please fill form correctly");
                    }
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal[300],
                    textStyle: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: "ProximaSoft"),
                    padding:
                        EdgeInsets.symmetric(horizontal: 138, vertical: 17),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
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
            Row(
              children: [
                Spacer(),
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/signup",
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.teal[500]),
                  ),
                ),
                Spacer(),
              ],
            ),

            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
