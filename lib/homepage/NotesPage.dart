import 'dart:io';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safe_pass/homepage/password_model.dart';

import 'NotesPage.dart';

class NotesPage extends StatefulWidget {
  NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  var _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    notesDescriptionMaxLenth =
        notesDescriptionMaxLines * notesDescriptionMaxLines;
  }

  @override
  void dispose() {
    noteDescriptionController.dispose();
    noteHeadingController.dispose();
    noteUsernameController.dispose();
    super.dispose();
  }

  @override
  bool _isObscure1 = true;
  Future<bool> _onBackPressed() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => exit(0),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
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
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.teal[500]),
          title: notesHeader(),
        ),
        body: noteHeading.length > 0
            ? buildNotes()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Saving\nmakes life easier.",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(" Tap the bottom right button to create a note."),
                  Image.asset("assets/images/homepage.png")
                ],
              ),
        floatingActionButton: FloatingActionButton(
          mini: false,
          backgroundColor: Colors.teal[400],
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildNotes() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      child: new ListView.builder(
        itemCount: noteHeading.length,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5.5),
            child: new Dismissible(
              key: UniqueKey(),
              direction: DismissDirection.horizontal,
              onDismissed: (direction) {
                setState(() {
                  deletedNoteHeading = noteHeading[index];
                  deletedNoteDescription = noteDescription[index];
                  deletedNoteUsername = noteUsername[index];
                  noteHeading.removeAt(index);
                  noteDescription.removeAt(index);
                  noteUsername.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                    new SnackBar(
                      backgroundColor: Colors.purple,
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          new Text(
                            "Note Deleted",
                            style: TextStyle(),
                          ),
                          deletedNoteHeading != ""
                              ? GestureDetector(
                                  onTap: () {
                                    print("undo");
                                    setState(() {
                                      if (deletedNoteHeading != "") {
                                        noteHeading.add(deletedNoteHeading);
                                        noteDescription
                                            .add(deletedNoteDescription);
                                        noteUsername.add(deletedNoteUsername);
                                      }
                                      deletedNoteHeading = "";
                                      deletedNoteUsername = "";
                                      deletedNoteDescription = "";
                                    });
                                  },
                                  child: new Text(
                                    "Undo",
                                    style: TextStyle(),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  );
                });
              },
              background: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.red[600],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              secondaryBackground: ClipRRect(
                borderRadius: BorderRadius.circular(5.5),
                child: Container(
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              child: noteList(index),
            ),
          );
        },
      ),
    );
  }

  Widget noteList(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        child: Container(
          // width: MediaQuery.of(context).size.width / 2,
          width: double.infinity,
          decoration: BoxDecoration(
            color: noteColor[(index % noteColor.length).floor()],
            borderRadius: BorderRadius.circular(20),
          ),
          height: 160,
          child: Center(
            child: Row(
              children: [
                new Container(
                  color:
                      noteMarginColor[(index % noteMarginColor.length).floor()],
                  width: 2.5,
                  height: double.infinity,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 10),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Text(
                            noteHeading[index],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15.00,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.5,
                        ),
                        Text("Username"),
                        Text(
                          noteUsername[index],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 25.00,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.5,
                        ),
                        Text("Password"),
                        AutoSizeText(
                          "${(noteDescription[index])}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 25.00,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        onDoubleTap: () {
          Navigator.pushNamed(
            context,
            "/OpenPassword",
          );
        },
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 50,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext bc) {
        return Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: (MediaQuery.of(context).size.height),
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 100, top: 50),
                  child: new Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Password",
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ProximaSoft',
                              color: Colors.teal[400],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  noteHeading.add(noteHeadingController.text);
                                  noteUsername.add(noteUsernameController.text);
                                  noteDescription
                                      .add(noteDescriptionController.text);
                                  noteHeadingController.clear();
                                  noteDescriptionController.clear();
                                  noteUsernameController.clear();
                                });
                                Navigator.pop(context);
                              }
                              print("Notes.dart LineNo:239");
                              print(noteHeadingController.text);
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/checkmark.png",
                                    scale: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.teal[400],
                        thickness: 2.5,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        // maxLength: notesHeaderMaxLenth,
                        controller: noteHeadingController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
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
                          labelText: "Platform",
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
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context)
                              .requestFocus(textSecondFocusNode);
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        // maxLength: notesHeaderMaxLenth,
                        controller: noteUsernameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
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
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context)
                              .requestFocus(textSecondFocusNode);
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 60,
                          child: TextFormField(
                            obscureText: _isObscure1,
                            focusNode: textSecondFocusNode,
                            // maxLines: notesDescriptionMaxLines,
                            // maxLength: notesDescriptionMaxLenth,
                            controller: noteDescriptionController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  gapPadding: 4,
                                  borderSide: BorderSide()),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  gapPadding: 10,
                                  borderSide: BorderSide()),
                              hintText: "Enter Password",
                              labelText: "Password",
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
                              suffixIcon: IconButton(
                                icon: Icon(_isObscure1
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure1 = !_isObscure1;
                                  });
                                },
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
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              noteHeading.add(noteHeadingController.text);
                              noteUsername.add(noteUsernameController.text);
                              noteDescription
                                  .add(noteDescriptionController.text);
                              noteHeadingController.clear();
                              noteDescriptionController.clear();
                              noteUsernameController.clear();
                            });
                            Navigator.pop(context);
                          }
                          print("Notes.dart LineNo:239");
                          print(noteHeadingController.text);
                        },
                        child: Text(
                          'Save',
                          softWrap: false,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal[300],
                          textStyle: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ProximaSoft"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 145, vertical: 17),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(
                              20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _isObscure {}

Widget notesHeader() {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Text(
            "My Passwords",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.teal[400],
              fontSize: 20.00,
              fontWeight: FontWeight.bold,
              fontFamily: 'ProximaSoft',
            ),
          ),
          SizedBox(
            width: 90,
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Divider(
        color: Colors.teal[400],
        thickness: 2.5,
      ),
    ],
  );
}
