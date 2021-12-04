import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safe_pass/sign_up/complete_profile.dart';

class Profile extends StatelessWidget {
  final String nameHolder;
  final String lastnameHolder;
  final String numberHolder;
  final String emailHolder;

  Profile({
    Key? key,
    required this.nameHolder,
    required this.lastnameHolder,
    required this.numberHolder,
    required this.emailHolder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Positioned(
              child: ClipRRect(
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.teal[300],
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          "Username",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        AutoSizeText(
                          nameHolder + " " + lastnameHolder,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Text(
                          "Email-Id",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        AutoSizeText(
                          emailHolder,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Text(
                          "Phone No.",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        AutoSizeText(
                          numberHolder,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.23,
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: AutoSizeText(
                                "Sign Out",
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.logout_outlined,
                              color: Colors.white,
                              size: 30,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
            "Profile",
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

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
