import 'package:flutter/material.dart';
import 'package:portfolio/Model/AboutSection/download_functionality.dart';
import 'package:portfolio/UI/SectionsOfHomePage/AboutSection/about_section.dart';
import 'package:portfolio/UI/SectionsOfHomePage/ContactMe/contact_me.dart';
import 'package:portfolio/UI/SectionsOfHomePage/FeedbackRecieved/feedback_recieved.dart';
import 'package:portfolio/UI/SectionsOfHomePage/RecentWorks/recent_Works.dart';
import 'package:portfolio/UI/SectionsOfHomePage/TopSection/top_section.dart';
import 'package:portfolio/UI/SectionsOfHomePage/ServiceSection/serviceSection.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DownloadButtonWeb downloadButtonWeb = DownloadButtonWeb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        key: const Key('CustomScrollViewKey'),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const TopSection(),
              const SizedBox(height: 100,),
              AboutSection(),
              const ServiceOffering(),
              const RecentWorks(),
              const FeedbackRecieved(),
              const ContactMe(),
            ]),
          )
        ],
      ),
    );
  }
}
