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
        ), //todo remove this blurring part of code in a parent widget code ,i.e., in top_section.dart file
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 25,
          ),
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Hello There!'),
              Text(
                'Aayush \nSahay',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Flutter Developer'),
            ],
          ),
        ),
      ),
    );
  }
}
