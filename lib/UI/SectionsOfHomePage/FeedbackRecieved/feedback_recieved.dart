import 'package:flutter/material.dart';

class FeedbackReceived extends StatefulWidget {
  const FeedbackReceived({Key? key}) : super(key: key);

  @override
  State<FeedbackReceived> createState() => _FeedbackReceivedState();
}

class _FeedbackReceivedState extends State<FeedbackReceived> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height / 7,
      ),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: <Widget>[
                // SizedBox(width: MediaQuery.sizeOf(context).width/20,),
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
                          left: MediaQuery.sizeOf(context).width / 20,
                        ),
                        child: Text(
                          "Client's testimonials that inspired me a lot",
                          style: TextStyle(
                            fontSize: MediaQuery.sizeOf(context).width / 60,
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
                          'Feedback Received',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: MediaQuery.sizeOf(context).width / 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ), //todo remove this sizedbox and replace the code to do its job.
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                //todo convert children to auto generated list of them
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Card(
                    elevation: 0,
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(),
                            Positioned(
                              top: -35,
                              left: 115,
                              child: CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width / 35,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: MediaQuery.sizeOf(context).width / 40,
                                  backgroundImage: const AssetImage(
                                    'assets/people.png',
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 120,
                              top: 100,
                              child: Icon(
                                Icons.format_quote_outlined,
                                color: Colors.yellow,
                                size: 75,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 40.0,
                            right: 40.0,
                            bottom: 20.0,
                            top: 40,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                            // softWrap: true,
                            textAlign: TextAlign.center,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 18.0),
                          child: Text(
                            'Ronald Thompson',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Card(
                    elevation: 0,
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(),
                            Positioned(
                              top: -35,
                              left: 115,
                              child: CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width / 35,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: MediaQuery.sizeOf(context).width / 40,
                                  backgroundImage: const AssetImage(
                                    'assets/people.png',
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 120,
                              top: 100,
                              child: Icon(
                                Icons.format_quote_outlined,
                                color: Colors.yellow,
                                size: 75,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 40.0,
                            right: 40.0,
                            bottom: 20.0,
                            top: 40,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                            // softWrap: true,
                            textAlign: TextAlign.center,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 18.0),
                          child: Text(
                            'Ronald Thompson',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Card(
                    elevation: 0,
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(),
                            Positioned(
                              top: -35,
                              left: 115,
                              child: CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width / 35,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: MediaQuery.sizeOf(context).width / 40,
                                  backgroundImage: const AssetImage(
                                    'assets/people.png',
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 120,
                              top: 100,
                              child: Icon(
                                Icons.format_quote_outlined,
                                color: Colors.yellow,
                                size: 75,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 40.0,
                            right: 40.0,
                            bottom: 20.0,
                            top: 40,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                            // softWrap: true,
                            textAlign: TextAlign.center,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 18.0),
                          child: Text(
                            'Ronald Thompson',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
