import 'package:flutter/material.dart';
import 'package:portfolio/Data/heading_part_of_every_section_data.dart';

class HeadingPartOfEverySection extends StatefulWidget {
  const HeadingPartOfEverySection({Key? key, required this.index})
      : super(key: key);
  final int index;

  @override
  State<HeadingPartOfEverySection> createState() =>
      _HeadingPartOfEverySectionState();
}

class _HeadingPartOfEverySectionState extends State<HeadingPartOfEverySection> {
  final HeadingPartOfEverySectionData _headingPartOfEverySectionData =
      HeadingPartOfEverySectionData();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // SizedBox(width: MediaQuery.of(context).size.width/20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 7,
                    color: _headingPartOfEverySectionData
                        .colorOfTopBorderPart[widget.index],
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 40,
                ),
                child: Text(
                  _headingPartOfEverySectionData.textOfTopPart[widget.index],
                  style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.w100,
                    fontSize: MediaQuery.of(context).size.width / 80,
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
                  left: MediaQuery.of(context).size.width / 40,
                ),
                child: Text(
                  _headingPartOfEverySectionData.textOfBottomPart[widget.index],
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: MediaQuery.of(context).size.width / 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
