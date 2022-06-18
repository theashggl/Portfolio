import 'package:flutter/material.dart';
import 'package:portfolio/UI/SectionsOfHomePage/TopSection/Components/bio_text.dart';
import 'package:portfolio/UI/SectionsOfHomePage/TopSection/Components/menu.dart';
import 'package:portfolio/UI/SectionsOfHomePage/TopSection/Components/person_pic.dart';

class TopSection extends StatefulWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('BackgroundContainerKey'),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/top_section_background.png'),
        ),
      ),
      child: Stack(
        key: const Key('TopSectionKey'),
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: const [
          IntroductoryText(),
          PersonPic(),
          Menu(),
        ],
      ),
    );
  }
}
