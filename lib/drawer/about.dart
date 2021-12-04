import 'package:flutter/material.dart';
import 'package:safe_pass/appbar.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            Material(
              elevation: 7,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset("assets/images/lock.png"),
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Safe Pass",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.teal[400],
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'ProximaSoft',
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Version 1.0.0",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 55,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "© 2021-20XX ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "   All rights reserved.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.teal,
                      width: 2.6,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 5,
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.teal[500]),
        title: SizedBox(
          child: Text(
            "About",
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
                leading: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                title: const Text(
                  '  Home',
                  style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    "/NotesPage",
                  );
                },
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
                  Navigator.pushNamed(
                    context,
                    "/profile",
                  );
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
                  Navigator.pushNamed(
                    context,
                    "/about",
                  );
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
                  Navigator.pushNamed(
                    context,
                    "/settings",
                  );
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
                  Navigator.pushNamed(
                    context,
                    "/profile",
                  );
                },
              ),
              SizedBox(
                height: 40,
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
                  Navigator.pushNamed(
                    context,
                    "/share",
                  );
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
                  Navigator.pushNamed(
                    context,
                    "/feedback",
                  );
                },
              ),
              SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
