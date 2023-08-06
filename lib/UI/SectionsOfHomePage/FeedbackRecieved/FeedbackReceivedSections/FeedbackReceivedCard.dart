import 'package:flutter/material.dart';

class FeedbackReceivedCard extends StatefulWidget {
  const FeedbackReceivedCard({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedbackReceivedCard> createState() => _FeedbackReceivedCardState();
}

class _FeedbackReceivedCardState extends State<FeedbackReceivedCard> {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width / 5.2,
        child: Card(
          elevation: 0,
          color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // Container(),
                  Positioned(
                    top: -35,
                    left: -35,
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
                    left: -35,
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
    );
  }
}
