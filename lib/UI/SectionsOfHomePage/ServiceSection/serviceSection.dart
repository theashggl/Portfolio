import 'package:flutter/material.dart';

class ServiceOffering extends StatefulWidget {
  const ServiceOffering({Key? key}) : super(key: key);

  @override
  State<ServiceOffering> createState() => _ServiceOfferingState();
}

class _ServiceOfferingState extends State<ServiceOffering> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: MediaQuery.of(context).size.height,
      ),
      child: Column(
        children: <Widget>[
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
                          fontSize: MediaQuery.of(context).size.width / 60,
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
                        'Service Offerings',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: MediaQuery.of(context).size.width / 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            //todo change the contents of this row into a list item builder instead of hard coding it
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    color: const Color(0xFFD9FFFC),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: MediaQuery.of(context).size.width / 26,
                          child: Image.asset('assets/graphic.png'),
                        ),
                        const Text('Graphic Design'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    color: const Color(0xFFE4FFC7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: MediaQuery.of(context).size.width / 26,
                          child: Image.asset('assets/web_design_logo.png'),
                        ),
                        const Text('Web Design'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    color: const Color(0xFFFFF3DD),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: MediaQuery.of(context).size.width / 26,
                          child: Image.asset('assets/ui_design.png'),
                        ),
                        const Text('UI Design'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    color: const Color(0xFFFFE0E0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: MediaQuery.of(context).size.width / 26,
                          child: Image.asset('assets/interaction_design.png'),
                        ),
                        const Text('Interaction Design'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
