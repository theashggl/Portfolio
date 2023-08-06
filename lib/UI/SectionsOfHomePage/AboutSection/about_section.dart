import 'package:flutter/material.dart';
import 'package:portfolio/Model/AboutSection/download_functionality.dart';
import 'package:portfolio/UI/SectionsOfHomePage/AboutSection/about_section_text.dart';
import 'package:portfolio/UI/SectionsOfHomePage/AboutSection/experience_card.dart';

class AboutSection extends StatelessWidget {
  AboutSection({Key? key}) : super(key: key);
  final DownloadButtonWeb downloadButtonWeb = DownloadButtonWeb();

  @override
  Widget build(BuildContext context) {
    //todo adjust the width of the container to be same as that of menu. Same way as the picture
    return SizedBox(
      width: MediaQuery.sizeOf(context).width/1.7,
      height: 400,
      // constraints: BoxConstraints.expand(
      //   // width: MediaQuery.of(context).size.width/7652,
      // height: MediaQuery.of(context).size.height,
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('About my story',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      ),
                      Image.asset('assets/sign.png',
                      scale:2,
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: AboutSectionText(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  ),
                ),
                const Expanded(
                  child: ExperienceCard(
                    numOfExp: '1',
                  ),
                ),
                const Expanded(
                  child: AboutSectionText(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 29, vertical: 13,),
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
                    EdgeInsets.symmetric(horizontal: 29, vertical: 13,),
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
