import 'package:flutter/material.dart';
import 'package:portfolio/Data/service_section_card_data.dart';

class CardsOfServiceSection extends StatefulWidget {
  const CardsOfServiceSection({Key? key, required this.indexforLoop})
      : super(key: key);
  final int indexforLoop;

  @override
  State<CardsOfServiceSection> createState() => _CardsOfServiceSectionState();
}

class _CardsOfServiceSectionState extends State<CardsOfServiceSection> {
  ServiceSectionCardData serviceSectionCardData = ServiceSectionCardData();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 7,
      child: AspectRatio(
        aspectRatio: 1,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          color: serviceSectionCardData.colorsOfCard[widget.indexforLoop],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 20), // The 9 is the position of light source on y axis
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                      // color: const Color(0xFF0700B1).withOpacity(0.15),//These properties for hover on card
                      // blurRadius: 50,
                      // offset: const Offset(0, 50),
                    )
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: MediaQuery.of(context).size.width / 26,
                  child: Image.asset(
                    serviceSectionCardData
                        .circleAvatarChildImage[widget.indexforLoop],
                  ),
                ),
              ),
              Text(
                serviceSectionCardData
                    .nameOfExperienceCard[widget.indexforLoop],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
