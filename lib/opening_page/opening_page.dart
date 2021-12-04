import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';

// final List<Image> images = [
//   Image.asset("assets/images/openingscreen/openingscreen.png"),
//   Image.asset("assets/images/openingscreen/openingscreen2.png"),
//   Image.asset("assets/images/openingscreen/openingscreen3.png"),
// ];

class OpeningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 85,
          ),
          Text(
            "SafePass",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "ProximaSoft",
              fontSize: 55,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Welcome to SafePass.",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 45,
          ),
          CarouselSlider.builder(
            itemCount: 3,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.0,
              enlargeCenterPage: true,
            ),
            itemBuilder: (context, index, realIdx) {
              return Container(
                child: Center(
                  child: Image.asset(
                    "assets/images/openingscreen.png",
                    height: 1000,
                  ),
                ),
              );
            },
          ),

          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/loginpage",
                );
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[300],
                textStyle: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ProximaSoft"),
                padding: EdgeInsets.symmetric(horizontal: 115, vertical: 17),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(
          //       context,
          //       "/signup",
          //     );
          //   },
          //   child: Text('Sign Up'),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.teal[300],
          //     textStyle: TextStyle(
          //         fontSize: 23,
          //         fontWeight: FontWeight.bold,
          //         fontFamily: "ProximaSoft"),
          //     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 17),
          //     shape: new RoundedRectangleBorder(
          //       borderRadius: new BorderRadius.circular(
          //         20,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
