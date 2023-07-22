import 'package:flutter/material.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          image: AssetImage('assets/bg_img_2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
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
              Card(
                elevation: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 6,
                            height: 80,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.redAccent,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: const Image(
                                        image:
                                            AssetImage('assets/people.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width/25,
                                    ),
                                    const Text(
                                      'Whatsapp',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 6,
                            height: 80,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.redAccent,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: const Image(
                                        image:
                                            AssetImage('assets/people.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width/25,
                                    ),
                                    const Text(
                                      'Twitter',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 6,
                            height: 80,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.redAccent,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: const Image(
                                        image:
                                            AssetImage('assets/people.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width/25,
                                    ),
                                    const Text(
                                      'Linkedin',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Wrap(
                    //   children: [],
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
