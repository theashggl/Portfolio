import 'package:flutter/material.dart';
import 'package:portfolio/Data/service_section_card_data.dart';
import 'package:portfolio/UI/SectionsOfHomePage/ServiceSection/CardOfServiceSection/card_of_service_section.dart';
import 'package:portfolio/UI/SectionsOfHomePage/heading_part_of_every_section.dart';

class ServiceOffering extends StatefulWidget {
  const ServiceOffering({Key? key}) : super(key: key);

  @override
  State<ServiceOffering> createState() => _ServiceOfferingState();
}

class _ServiceOfferingState extends State<ServiceOffering> {
  final ServiceSectionCardData _serviceSectionCardData =
      ServiceSectionCardData();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        width: MediaQuery.sizeOf(context).width / 1.7,
        height: MediaQuery.of(context).size.height / 1.2,
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Row(
          //   children: <Widget>[
          //     // SizedBox(width: MediaQuery.of(context).size.width/20,),
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: <Widget>[
          //         Container(
          //           decoration: const BoxDecoration(
          //             border: Border(
          //               left: BorderSide(
          //                 width: 7,
          //                 color: Colors.red,
          //               ),
          //             ),
          //           ),
          //           child: Padding(
          //             padding: EdgeInsets.only(
          //               left: MediaQuery.of(context).size.width / 40,
          //             ),
          //             child: Text(
          //               'My Strong Arenas',
          //               style: TextStyle(
          //                 height: 2,
          //                 fontWeight: FontWeight.w100,
          //                 fontSize: MediaQuery.of(context).size.width / 80,
          //               ),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           decoration: const BoxDecoration(
          //             border: Border(
          //               left: BorderSide(
          //                 width: 7,
          //               ),
          //             ),
          //           ),
          //           child: Padding(
          //             padding: EdgeInsets.only(
          //               left: MediaQuery.of(context).size.width / 40,
          //             ),
          //             child: Text(
          //               'Service Offerings',
          //               style: TextStyle(
          //                 fontWeight: FontWeight.w900,
          //                 fontSize: MediaQuery.of(context).size.width / 30,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          const HeadingPartOfEverySection(index: 0),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              //todo make the listview so that it acquires all the space available horizontally
              // itemExtent: MediaQuery.sizeOf(context).width/6.2,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _serviceSectionCardData.colorsOfCard.length,
              itemBuilder: (context, index) {
                return CardsOfServiceSection(
                  indexforLoop: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
