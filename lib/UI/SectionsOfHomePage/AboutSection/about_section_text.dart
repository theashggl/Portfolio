import 'package:flutter/material.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        height: 1.45,//This number will change according to the text present
        fontSize: 12,
        fontWeight: FontWeight.w200,
        color: Color(0xFF707070),
        // height: 2,
      ),
    );
  }
}
