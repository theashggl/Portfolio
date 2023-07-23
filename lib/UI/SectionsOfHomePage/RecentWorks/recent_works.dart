import 'package:flutter/material.dart';

class RecentWorks extends StatefulWidget {
  const RecentWorks({Key? key}) : super(key: key);

  @override
  State<RecentWorks> createState() => _RecentWorksState();
}

class _RecentWorksState extends State<RecentWorks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        // Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/services_background.png'),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -70,
            //todo This needs to be set such that the top child is half way through the container
            left: 0,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 5,
                    width: MediaQuery.sizeOf(context).width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Flexible(
                            child: Image(
                              image: AssetImage('assets/graphic.png'),
                            ),
                          ),
                          //todo change the image to the one in the source of website
                          const Flexible(
                            child: VerticalDivider(
                              color: Colors.black,
                              thickness: 0.5,
                              width: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Starting New Project?',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.sizeOf(context).width / 60,
                                  ),
                                ),
                                const Text(
                                  'Get an estimate for the new project',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2,
                          ),
                          Flexible(
                            child: TextButton.icon(
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
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      // SizedBox(width: MediaQuery.sizeOf(context).width/20,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    width: 7,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.sizeOf(context).width / 20,
                                ),
                                child: Text(
                                  'My Strong Arenas',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.sizeOf(context).width / 60,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    width: 7,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.sizeOf(context).width / 20,
                                ),
                                child: Text(
                                  'Recent Works',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize:
                                        MediaQuery.sizeOf(context).width / 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    //todo create a list.generate list to create the lists.
                    children: [
                      SizedBox(width:MediaQuery.sizeOf(context).width/19,),
                      FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Card(
                          semanticContainer: false,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            height: 160,
                            width: 100,
                            child: Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10),
                                  ),
                                  elevation: 0,
                                  child: const Image(
                                    image: AssetImage('assets/work1.png'),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width /
                                          19,
                                ),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Text('GRAPHIC DESIGN'),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'New  Fresh Looking Portfolio indeed at the end',
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow:
                                                TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      Text('View Details'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.3,
                        child: Card(
                          semanticContainer: false,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            height: 160,
                            width: 100,
                            child: Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10),
                                  ),
                                  elevation: 0,
                                  child: const Image(
                                    image: AssetImage('assets/work1.png'),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width /
                                          19,
                                ),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Text('GRAPHIC DESIGN'),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'New  Fresh Looking Portfolio indeed at the end',
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      Text('View Details'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.3,
                        child: Card(
                          semanticContainer: false,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            height: 160,
                            width: 100,
                            child: Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10),
                                  ),
                                  elevation: 0,
                                  child: const Image(
                                    image: AssetImage('assets/work1.png'),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width /
                                          19,
                                ),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Text('GRAPHIC DESIGN'),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'New  Fresh Looking Portfolio indeed at the end',
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      Text('View Details'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.3,
                        child: Card(
                          semanticContainer: false,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            height: 160,
                            width: 100,
                            child: Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10),
                                  ),
                                  elevation: 0,
                                  child: const Image(
                                    image: AssetImage('assets/work1.png'),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width /
                                          19,
                                ),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Text('GRAPHIC DESIGN'),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'New  Fresh Looking Portfolio indeed at the end',
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      Text('View Details'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
