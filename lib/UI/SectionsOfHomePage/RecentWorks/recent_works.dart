import 'package:flutter/material.dart';
import 'package:portfolio/Data/recent_works_data.dart';
import 'package:portfolio/UI/SectionsOfHomePage/RecentWorks/RecentWorksTemplate/recent_works_template.dart';
import 'package:portfolio/UI/SectionsOfHomePage/heading_part_of_every_section.dart';
//todo implement the recent works tiles
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
      decoration: BoxDecoration(
        color:  const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage('assets/services_background.png'),
        )
      ),
      child: Center(
        child: Container(
          // alignment: Alignment.center,
          constraints: BoxConstraints.expand(
            width: MediaQuery.sizeOf(context).width / 1.7,
            height: MediaQuery.sizeOf(context).height,
          ),
          // decoration: const BoxDecoration(
          //   // ,
          //   // Color(0xFFF7E8FF).withOpacity(0.3),
          //   image: DecorationImage(
          //     repeat: ImageRepeat.repeat,
          //     fit: BoxFit.cover,
          //     image: AssetImage('assets/services_background.png'),
          //   ),
          // ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -70,
                //todo This needs to be set such that the top child is half way through the container
                left: 0,
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.7,
                  height: 500,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 50),
                              blurRadius: 40,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 8.0, right: 8.0),
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
                                    fontSize: MediaQuery.sizeOf(context).width / 60,
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
                                    shape: MaterialStatePropertyAll<StadiumBorder>(
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
                            // Row(//todo adjust this row to look like that in the pic
                            //   children: [
                            //     Expanded(
                            //       child: Row(
                            //         children: [
                            //           const Image(
                            //             image: AssetImage('assets/graphic.png'),
                            //           ),
                            //           //todo change the image to the one in the source of website
                            //           const VerticalDivider(
                            //             color: Colors.black,
                            //             thickness: 0.5,
                            //             width: 1,
                            //             indent: 10,
                            //             endIndent: 10,
                            //           ),
                            //           Flexible(
                            //             // flex: 2,
                            //             child: Column(
                            //               mainAxisAlignment: MainAxisAlignment.center,
                            //               crossAxisAlignment: CrossAxisAlignment.start,
                            //               children: [
                            //                 Text(
                            //                   'Starting New Project?',
                            //                   style: TextStyle(
                            //                     fontSize:
                            //                         MediaQuery.sizeOf(context).width / 60,
                            //                   ),
                            //                 ),
                            //                 const Text(
                            //                   'Get an estimate for the new project',
                            //                   maxLines: 1,
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //     // SizedBox(
                            //         //   width: MediaQuery.sizeOf(context).width / 8,
                            //         // ),
                            //         Flexible(
                            //           child: TextButton.icon(
                            //             style: const ButtonStyle(
                            //               padding: MaterialStatePropertyAll<
                            //                   EdgeInsetsGeometry>(
                            //                 EdgeInsets.all(22),
                            //               ),
                            //               side: MaterialStatePropertyAll<BorderSide>(
                            //                 BorderSide(
                            //                   width: 0.1,
                            //                 ),
                            //               ),
                            //               shape:
                            //                   MaterialStatePropertyAll<StadiumBorder>(
                            //                 StadiumBorder(),
                            //               ),
                            //             ),
                            //             onPressed: () => {},
                            //             icon: Image.asset('assets/hand.png'),
                            //             label: const Text('Hire Me!'),
                            //             // icon: Image.asset('assets/hand.png'),
                            //             // label: const Text('Download CV'),
                            //           ),
                            //         ),
                            //
                            //   ],
                            // ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 10,
                      ),
                      // Row(
                      //   children: <Widget>[
                      //     // SizedBox(width: MediaQuery.sizeOf(context).width/20,),
                      //     Expanded(
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: <Widget>[
                      //           Container(
                      //             decoration: const BoxDecoration(
                      //               border: Border(
                      //                 left: BorderSide(
                      //                   width: 7,
                      //                   color: Colors.red,
                      //                 ),
                      //               ),
                      //             ),
                      //             child: Padding(
                      //               padding: EdgeInsets.only(
                      //                 left: MediaQuery.sizeOf(context).width / 20,
                      //               ),
                      //               child: Text(
                      //                 'My Strong Arenas',
                      //                 style: TextStyle(
                      //                   fontSize:
                      //                       MediaQuery.sizeOf(context).width / 60,
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //           Container(
                      //             decoration: const BoxDecoration(
                      //               border: Border(
                      //                 left: BorderSide(
                      //                   width: 7,
                      //                 ),
                      //               ),
                      //             ),
                      //             child: Padding(
                      //               padding: EdgeInsets.only(
                      //                 left: MediaQuery.sizeOf(context).width / 20,
                      //               ),
                      //               child: Text(
                      //                 'Recent Works',
                      //                 style: TextStyle(
                      //                   fontWeight: FontWeight.w900,
                      //                   fontSize:
                      //                       MediaQuery.sizeOf(context).width / 20,
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      const HeadingPartOfEverySection(index: 1),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 10,
                      ),//look out for the line 455 for the grid view implementation instead of the wrap implementation of following child widgets
                      // SizedBox(
                      //   width: MediaQuery.sizeOf(context).width / 19,
                      // ),
                      // SizedBox(
                      //   height: 200,
                      //   width: MediaQuery.sizeOf(context).width,
                      //   child: ListView.builder(
                      //     itemCount: _recentWorkData.detailsOfRecentWork.length,
                      //     shrinkWrap: true,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, currentIndex) {
                      //       return RecentWorksTemplate(
                      //         currentIndex: currentIndex,
                      //       );
                      //     },
                      //   ),
                      // ),
                      // const Wrap(
                      //   children: [
                      //     RecentWorksTemplate(currentIndex: 0),
                      //     RecentWorksTemplate(currentIndex: 1),
                      //     RecentWorksTemplate(currentIndex: 2),
                      //     RecentWorksTemplate(currentIndex: 3),
                      //   ],
                      // ),
                      // FractionallySizedBox(
                      //   widthFactor: 0.3,
                      //   child: Card(
                      //     semanticContainer: false,
                      //     elevation: 0,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //     child: SizedBox(
                      //       height: 160,
                      //       width: 100,
                      //       child: Row(
                      //         children: [
                      //           Card(
                      //             margin: EdgeInsets.zero,
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //             elevation: 0,
                      //             child: const Image(
                      //               image: AssetImage('assets/work1.png'),
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: MediaQuery.sizeOf(context).width / 19,
                      //           ),
                      //           const Expanded(
                      //             child: Column(
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceEvenly,
                      //               children: [
                      //                 Expanded(
                      //                   child: Text('GRAPHIC DESIGN'),
                      //                 ),
                      //                 Expanded(
                      //                   child: Center(
                      //                     child: Text(
                      //                       'New  Fresh Looking Portfolio indeed at the end',
                      //                       softWrap: true,
                      //                       maxLines: 2,
                      //                       overflow: TextOverflow.ellipsis,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 Text('View Details'),
                      //               ],
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // FractionallySizedBox(
                      //   widthFactor: 0.3,
                      //   child: Card(
                      //     semanticContainer: false,
                      //     elevation: 0,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //     child: SizedBox(
                      //       height: 160,
                      //       width: 100,
                      //       child: Row(
                      //         children: [
                      //           Card(
                      //             margin: EdgeInsets.zero,
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //             elevation: 0,
                      //             child: const Image(
                      //               image: AssetImage('assets/work1.png'),
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: MediaQuery.sizeOf(context).width / 19,
                      //           ),
                      //           const Expanded(
                      //             child: Column(
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceEvenly,
                      //               children: [
                      //                 Expanded(
                      //                   child: Text('GRAPHIC DESIGN'),
                      //                 ),
                      //                 Expanded(
                      //                   child: Center(
                      //                     child: Text(
                      //                       'New  Fresh Looking Portfolio indeed at the end',
                      //                       softWrap: true,
                      //                       maxLines: 2,
                      //                       overflow: TextOverflow.ellipsis,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 Text('View Details'),
                      //               ],
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // FractionallySizedBox(
                      //   widthFactor: 0.3,
                      //   child: Card(
                      //     semanticContainer: false,
                      //     elevation: 0,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //     child: SizedBox(
                      //       height: 160,
                      //       width: 100,
                      //       child: Row(
                      //         children: [
                      //           Card(
                      //             margin: EdgeInsets.zero,
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //             elevation: 0,
                      //             child: const Image(
                      //               image: AssetImage('assets/work1.png'),
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: MediaQuery.sizeOf(context).width / 19,
                      //           ),
                      //           const Expanded(
                      //             child: Column(
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceEvenly,
                      //               children: [
                      //                 Expanded(
                      //                   child: Text('GRAPHIC DESIGN'),
                      //                 ),
                      //                 Expanded(
                      //                   child: Center(
                      //                     child: Text(
                      //                       'New  Fresh Looking Portfolio indeed at the end',
                      //                       softWrap: true,
                      //                       maxLines: 2,
                      //                       overflow: TextOverflow.ellipsis,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 Text('View Details'),
                      //               ],
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      // SingleChildScrollView(
                      //   primary: false,
                      //   child: GridView.builder(
                      //     shrinkWrap: true,//This and the above widget somehow doesn't let the children cut off due to height restrictions.
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     itemCount: _recentWorkData.detailsOfRecentWork.length,
                      //     gridDelegate:
                      //         const SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 2,
                      //       crossAxisSpacing: 5,
                      //           mainAxisSpacing: 5,
                      //     ),
                      //     itemBuilder: (context, index) {
                      //      return RecentWorksTemplate(
                      //         currentIndex: index,
                      //       );
                      //
                      //     },
                      //   ),
                      // )
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
