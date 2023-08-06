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
      width: 200,
      height: 20,
      child: Card(
        semanticContainer: false,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          height: 20,
          width: 100,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(_recentWorkData.nameOfRecentWork[widget.currentIndex]),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          _recentWorkData.detailsOfRecentWork[widget.currentIndex],
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Text(_recentWorkData.viewDetailsButtonText),
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
