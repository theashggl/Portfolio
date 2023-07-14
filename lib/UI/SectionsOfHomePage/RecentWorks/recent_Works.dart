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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Image(
                          image: AssetImage('assets/graphic.png'),
                        ),
                        //todo change the image to the one in the source of website
                        const VerticalDivider(
                          color: Colors.black,
                          thickness: 0.5,
                          width: 1,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Starting New Project?',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 60,
                              ),
                            ),
                            const Text('Get an estimate for the new project'),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                        TextButton.icon(
                          style: const ButtonStyle(
                            padding:
                                MaterialStatePropertyAll<EdgeInsetsGeometry>(
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
                      ],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    // SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Column(
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
                              left: MediaQuery.of(context).size.width / 20,
                            ),
                            child: Text(
                              'My Strong Arenas',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 60,
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
                              left: MediaQuery.of(context).size.width / 20,
                            ),
                            child: Text(
                              'Recent Works',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize:
                                    MediaQuery.of(context).size.width / 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  //todo create a list.generate list to create the lists.
                  // mainAxisSize: ,
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Image.asset('assets/work1.png'),
                        title: const Text('Graphic Design'),
                        subtitle: const Text(
                          'New & Fresh Looking Portfolio indeed at the end',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Image.asset('assets/work_2.png'),
                        title: Text('Graphic Design'),
                        subtitle: Text(
                            'New & Fresh Looking Portfolio indeed at the end'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
