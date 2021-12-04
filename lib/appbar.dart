import 'package:flutter/material.dart';

Widget appDrawer(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.transparent,
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
