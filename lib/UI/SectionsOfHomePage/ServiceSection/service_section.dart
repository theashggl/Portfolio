import 'package:flutter/material.dart';
import 'package:portfolio/Data/service_section_card_data.dart';
import 'package:portfolio/UI/SectionsOfHomePage/ServiceSection/CardOfServiceSection/card_of_service_section.dart';

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
          SizedBox(
            height: 200,
            child: ListView.builder(
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
