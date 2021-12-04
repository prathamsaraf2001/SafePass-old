import 'package:flutter/material.dart';
import 'NotesPage.dart';

class OpenPassword extends StatelessWidget {
  const OpenPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19,
                ),
                Row(
                  children: [
                    Text(
                      "The Platform",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ProximaSoft',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // maxLength: notesHeaderMaxLenth,
                  // controller: noteHeadingController,
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
                    hintText: "Enter Platform Name",
                    // labelText: "Platform",
                    hintStyle: TextStyle(
                      fontSize: 15.00,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icons/network.gif",
                        height: 10,
                        scale: 7,
                      ),
                    ),
                  ),
                  // validator: (String noteHeading) {
                  //   if (noteHeading.isEmpty) {
                  //     return "Please enter Note Heading";
                  //   } else if (noteHeading.startsWith(" ")) {
                  //     return "Please avoid whitespaces";
                  //   }
                  // },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Username",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ProximaSoft',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // maxLength: notesHeaderMaxLenth,
                  // controller: noteUsernameController,
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
                    // labelText: "Username",
                    hintStyle: TextStyle(
                      fontSize: 15.00,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icons/username.png",
                        height: 10,
                        scale: 6,
                      ),
                    ),
                  ),
                  // validator: (String noteHeading) {
                  //   if (noteHeading.isEmpty) {
                  //     return "Please enter Note Heading";
                  //   } else if (noteHeading.startsWith(" ")) {
                  //     return "Please avoid whitespaces";
                  //   }
                  // },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ProximaSoft',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // obscureText: _isObscure1,
                  // focusNode: textSecondFocusNode,
                  // maxLines: notesDescriptionMaxLines,
                  // maxLength: notesDescriptionMaxLenth,
                  // controller: noteDescriptionController,
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
                    hintText: "Enter Password",
                    // labelText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 15.00,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icons/password.gif",
                        height: 10,
                        scale: 8,
                      ),
                    ),
                  ),

                  // validator: (String noteDescription) {
                  //   if (noteDescription.isEmpty) {
                  //     return "Please enter Note Desc";
                  //   } else if (noteDescription.startsWith(" ")) {
                  //     return "Please avoid whitespaces";
                  //   }
                  // },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.teal[500]),
          title: SizedBox(
            child: Text(
              "Your Password",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.teal[400],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'ProximaSoft',
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        endDrawer: Container(
          width: 250,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                SizedBox(
                  height: 0,
                ),
                Container(
                  height: 200,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: Colors.teal[200]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 50,
                          left: 0,
                          child: CircleAvatar(
                            radius: 40,
                            // minRadius: 5,
                            // maxRadius: 10,
                            backgroundColor: Colors.transparent,
                            child: CircleAvatar(
                              radius: 100,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 0,
                          child: Text(
                            "Profile Name",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  hoverColor: Colors.teal[200],
                  focusColor: Colors.teal[200],
                  leading: Image.asset(
                    "assets/icons/username.png",
                    scale: 6,
                  ),
                  title: const Text(
                    '  Profile',
                    style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/about.gif",
                    scale: 8,
                  ),
                  title: const Text(
                    '  About',
                    style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/settings.gif",
                    scale: 8,
                  ),
                  title: const Text(
                    '  Settings',
                    style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/log-out.png",
                    height: 25,
                  ),
                  title: const Text(
                    '  Sign Out',
                    style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 120,
                ),
                Divider(
                  color: Colors.teal[200],
                  indent: 10,
                  endIndent: 10,
                  thickness: 3,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: const Text(
                    '  Share',
                    style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  leading: Image.asset(
                    "assets/icons/share.png",
                    height: 25,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/feedback.png",
                    height: 35,
                    scale: 3,
                  ),
                  title: const Text(
                    '  Feedback',
                    style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
