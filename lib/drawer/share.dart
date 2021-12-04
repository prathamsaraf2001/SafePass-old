import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class Share extends StatelessWidget {
  const Share({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/icons/facebook2.png",
                  height: 45,
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Facebook",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ProximaSoft",
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.teal[100],
            thickness: 2.5,
            indent: 16,
            endIndent: 16,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/icons/whatsapp.png",
                  height: 45,
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Whatsapp",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ProximaSoft",
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.teal[100],
            thickness: 2.5,
            indent: 16,
            endIndent: 16,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/icons/instagram.png",
                  height: 45,
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ProximaSoft",
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.teal[100],
            thickness: 2.5,
            indent: 16,
            endIndent: 16,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
              ),
              TextButton.icon(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: "Download my App"));
                  final snackbar = SnackBar(
                    content: const Text('Copied to clipboard'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                },
                icon: Icon(
                  Icons.copy_all_outlined,
                  color: Colors.teal,
                ),
                label: Text(
                  "Copy Link",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Image.asset(
              "assets/images/share.png",
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.teal[500]),
        title: SizedBox(
          child: Text(
            "Share",
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
