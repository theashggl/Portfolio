import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/Model/AboutSection/downloadService.dart';
// import 'dart:html';//for web only implementation

class DownloadButtonWeb {
  // void downloadInWeb(String path) {//only works for web. Need to write code for other platforms
  //   final AnchorElement anchorElement = AnchorElement(href: path);
  //   anchorElement.download = 'resume.pdf';
  //   anchorElement.click();
  // }
  Future<void> downloadButton() async{
    final DownloadService downloadService = kIsWeb?WebDownloadService():MobileDownloadService();
    await downloadService.download(url: 'assets/downloads/resume.pdf');
  }

}
