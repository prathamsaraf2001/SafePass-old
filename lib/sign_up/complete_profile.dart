import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safe_pass/drawer/profile.dart';
import 'sign_up.dart';

class CompleteProfile extends StatelessWidget {
  final String emailHolder;

  CompleteProfile({Key? key, required this.emailHolder}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _numbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              "Complete Profile",
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
                    controller: _nameController,
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
                      hintText: "Enter your your firstname",
                      labelText: "FirstName",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/User.svg",
                          fit: BoxFit.scaleDown,
                          height: 10,
                          // scale: 6,
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
                    controller: _lastnameController,
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
                      hintText: "Enter your your lastname",
                      labelText: "LastName",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/User.svg",
                          fit: BoxFit.scaleDown,
                          height: 10,
                          // scale: 6,
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
                    controller: _numbercontroller,
                    keyboardType: TextInputType.number,
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
                      hintText: "Enter your your phone number",
                      labelText: "Phone Number",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/Phone.svg",
                          fit: BoxFit.scaleDown,
                          height: 8,
                          // scale: 6,
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
                      hintText: "Enter your your address",
                      labelText: "Address",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/Location point.svg",
                          height: 10,
                          fit: BoxFit.scaleDown,
                          // scale: 6,
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
              height: 45,
            ),
            ElevatedButton(
              onPressed: () {
                _sendDataToSecondScreen(context);
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[300],
                textStyle: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ProximaSoft"),
                padding: EdgeInsets.symmetric(horizontal: 118, vertical: 17),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "By continuing you confirm that you agree\nwith our Terms and Conditions",
              style: TextStyle(color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    String text1 = _nameController.text;
    String text2 = _lastnameController.text;
    String text3 = _numbercontroller.text;
    String text4 = emailHolder;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Profile(
            nameHolder: text1,
            lastnameHolder: text2,
            numberHolder: text3,
            emailHolder: text4,
          ),
        ));
  }
}
