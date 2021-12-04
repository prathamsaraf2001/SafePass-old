import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safe_pass/sign_up/complete_profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/user.png",
                scale: 10,
              ),
              Text(""),
            ],
          )
        ],
      ),
    );
  }
}
