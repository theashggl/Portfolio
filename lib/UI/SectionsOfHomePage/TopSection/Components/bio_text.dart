import 'dart:ui';

import 'package:flutter/material.dart';

class IntroductoryText extends StatelessWidget {
  const IntroductoryText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 5,
          sigmaX: 5,
        ),
        //todo remove this blurring part of code in a parent widget code ,i.e., in top_section.dart file
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 25,
          ),
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.height / 1.7,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello There!',
                style: TextStyle(color: Colors.white,
                fontSize: 30,
                ),
              ),
              Text(
                'Aayush \nSahay',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
