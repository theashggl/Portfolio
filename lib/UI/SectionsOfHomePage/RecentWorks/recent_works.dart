import 'package:flutter/material.dart';
import 'package:portfolio/Data/recent_works_data.dart';
import 'package:portfolio/UI/SectionsOfHomePage/RecentWorks/RecentWorksTemplate/recent_works_template.dart';
import 'package:portfolio/UI/SectionsOfHomePage/heading_part_of_every_section.dart';

class RecentWorks extends StatefulWidget {
  const RecentWorks({Key? key}) : super(key: key);

  @override
  State<RecentWorks> createState() => _RecentWorksState();
}

class _RecentWorksState extends State<RecentWorks> {
  final RecentWorkData _recentWorkData = RecentWorkData();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 1.3,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage('assets/services_background.png'),
        ),
      ),
      child: Center(
        child: Container(
          // alignment: Alignment.center,
          constraints: BoxConstraints.expand(
            width: MediaQuery.sizeOf(context).width / 1.7,
            height: MediaQuery.sizeOf(context).height,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -150,
                //todo This needs to be set such that the top child is half way through the container
                left: 0,
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.7,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 20),
                              blurRadius: 20,
                              color: const Color(0xFF0700B1).withOpacity(0.3),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height / 5.5,
                          width: MediaQuery.sizeOf(context).width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                            child: Center(
                              child: ListTile(
                                leading: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 8.0,
                                        right: 8.0,
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/email.png'),
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: Colors.black,
                                      thickness: 0.5,
                                      width: 1,
                                      // indent: 10,
                                      // endIndent: 10,
                                    ),
                                  ],
                                ),
                                title: Text(
                                  'Starting New Project?',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.sizeOf(context).width / 60,
                                  ),
                                ),
                                subtitle: const Text(
                                  'Get an estimate for the new project',
                                  maxLines: 1,
                                ),
                                trailing: TextButton.icon(
                                  style: const ButtonStyle(
                                    padding: MaterialStatePropertyAll<
                                        EdgeInsetsGeometry>(
                                      EdgeInsets.all(22),
                                    ),
                                    side: MaterialStatePropertyAll<BorderSide>(
                                      BorderSide(
                                        width: 0.1,
                                      ),
                                    ),
                                    shape:
                                        MaterialStatePropertyAll<StadiumBorder>(
                                      StadiumBorder(),
                                    ),
                                  ),
                                  onPressed: () => {},
                                  icon: Image.asset('assets/hand.png'),
                                  label: const Text('Hire Me!'),
                                  // icon: Image.asset('assets/hand.png'),
                                  // label: const Text('Download CV'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 10,
                      ),
                      const HeadingPartOfEverySection(index: 1),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 10,
                      ),
                      SizedBox(
                        height: 600,
                        width: MediaQuery.sizeOf(context).width,
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 40,
                          alignment: WrapAlignment.spaceBetween,
                          children: List<RecentWorksTemplate>.generate(
                              _recentWorkData.imageOfAsset.length,
                              (currentIndex) {
                            return RecentWorksTemplate(
                              currentIndex: currentIndex,
                            );
                          }),
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
    );
  }
}
