import 'package:flutter/material.dart';
import 'package:portfolio/Model/AboutSection/download_functionality.dart';
import 'package:portfolio/UI/SectionsOfHomePage/AboutSection/about_section_text.dart';
import 'package:portfolio/UI/SectionsOfHomePage/AboutSection/experience_card.dart';

class AboutSection extends StatelessWidget {
  AboutSection({Key? key}) : super(key: key);
  final DownloadButtonWeb downloadButtonWeb = DownloadButtonWeb();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 5,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text('About\n my story'),
                  Image.asset('assets/sign.png'),
                ],
              ),
              const Expanded(
                child: AboutSectionText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                ),
              ),
              const ExperienceCard(
                numOfExp: '1',
              ),
              const Expanded(
                child: AboutSectionText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.all(22),
                  ),
                  side: MaterialStatePropertyAll<BorderSide>(
                    BorderSide(
                      width: 0.1,
                    ),
                  ),
                  shape: MaterialStatePropertyAll<StadiumBorder>(
                    // RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0)
                    // ),
                    StadiumBorder(),
                  ),
                ),
                onPressed: () {},
                icon: Image.asset('assets/hand.png'),
                label: const Text('Hire Me!'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 35,
              ),
              TextButton.icon(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.all(22),
                  ),
                  side: MaterialStatePropertyAll<BorderSide>(
                    BorderSide(
                      width: 0.1,
                    ),
                  ),
                  shape: MaterialStatePropertyAll<StadiumBorder>(
                    StadiumBorder(),
                  ),
                ),
                onPressed: () => downloadButtonWeb.downloadButton(),
                icon: Image.asset('assets/hand.png'),
                label: const Text('Download CV'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
