import 'package:flutter/material.dart';

class FeedbackRecieved extends StatefulWidget {
  const FeedbackRecieved({Key? key}) : super(key: key);

  @override
  State<FeedbackRecieved> createState() => _FeedbackRecievedState();
}

class _FeedbackRecievedState extends State<FeedbackRecieved> {
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
                            'Recent Works',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: MediaQuery.sizeOf(context).width / 20,
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
              alignment: WrapAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width/7,
                  child: Card(
                    elevation: 0,
                    color: Colors.blueAccent,
                    child: Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.sizeOf(context).width / 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: MediaQuery.sizeOf(context).width / 40,
                              backgroundImage: const AssetImage(
                                'assets/people.png',
                              ),
                            ),
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            // softWrap: true,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            'Ronald Thompson',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width/7,
                  child: Card(
                    elevation: 0,
                    color: Colors.blueAccent,
                    child: Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.sizeOf(context).width / 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: MediaQuery.sizeOf(context).width / 40,
                              backgroundImage: const AssetImage(
                                'assets/people.png',
                              ),
                            ),
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            // softWrap: true,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            'Ronald Thompson',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width/7,
                  child: Card(
                    elevation: 0,
                    color: Colors.blueAccent,
                    child: Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.sizeOf(context).width / 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: MediaQuery.sizeOf(context).width / 40,
                              backgroundImage: const AssetImage(
                                'assets/people.png',
                              ),
                            ),
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            // softWrap: true,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            'Ronald Thompson',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width/7,
                  child: Card(
                    elevation: 0,
                    color: Colors.blueAccent,
                    child: Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.sizeOf(context).width / 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: MediaQuery.sizeOf(context).width / 40,
                              backgroundImage: const AssetImage(
                                'assets/people.png',
                              ),
                            ),
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            // softWrap: true,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            'Ronald Thompson',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
    );
  }
}
