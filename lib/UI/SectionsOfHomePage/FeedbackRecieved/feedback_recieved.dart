import 'package:flutter/material.dart';
import 'package:portfolio/UI/SectionsOfHomePage/FeedbackRecieved/FeedbackReceivedSections/FeedbackReceivedCard.dart';
import 'package:portfolio/UI/SectionsOfHomePage/heading_part_of_every_section.dart';

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
        width: MediaQuery.sizeOf(context).width / 1.7,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              const HeadingPartOfEverySection(index: 2),
            const SizedBox(
              height: 60,
            ), //todo remove this sizedbox and replace the code to do its job.
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width/ 1.7,
              child: ListView.builder(
                // shrinkWrap: true,
                // itemExtent: MediaQuery.sizeOf(context).width/1.7,
                clipBehavior: Clip.none,
                itemCount: 3,
                // physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const FeedbackReceivedCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
