import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 4),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 1.75,
        ),
        child: Image.asset(
          'assets/person.png',
          key: const Key('PersonPictureKey'),
        ),
      ),
    );
  }
}
