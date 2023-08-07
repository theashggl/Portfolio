import 'package:flutter/material.dart';
import 'package:portfolio/Data/recent_works_data.dart';

class RecentWorksTemplate extends StatefulWidget {
  const RecentWorksTemplate({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);
  final int currentIndex;

  @override
  State<RecentWorksTemplate> createState() => _RecentWorksTemplateState();
}

class _RecentWorksTemplateState extends State<RecentWorksTemplate> {
  final RecentWorkData _recentWorkData = RecentWorkData();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 200,
      child: Card(
        semanticContainer: false,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          height: 200,
          width: 200,
          child: Row(
            children: [
              Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                child: Image(
                  image: AssetImage(_recentWorkData.imageOfAsset[widget.currentIndex]),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_recentWorkData.nameOfRecentWork[widget.currentIndex],
                    textScaleFactor: 0.7,),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0,bottom: 25.0,right: 8.0,),
                      child: Center(
                        child: Text(
                          _recentWorkData.detailsOfRecentWork[widget.currentIndex],
                          softWrap: true,
                          maxLines: 3,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Text(_recentWorkData.viewDetailsButtonText,
                      textScaleFactor: 0.7,
                    ),
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
