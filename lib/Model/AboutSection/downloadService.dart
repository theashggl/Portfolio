import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_html/html.dart' as html;

abstract class DownloadService {
  Future<void> download({required String url});
}

class WebDownloadService extends DownloadService {
  @override
  Future<void> download({required String url}) async {
    html.window.open(url, '_blank');
  }
}

class MobileDownloadService extends DownloadService {
  @override
  Future<void> download({required String url}) async {
    // final bool hasPermission = await _requestWritePermission();
    // if (!hasPermission) return;
    // print(hasPermission);
    final Dio dio = Dio();
      await dio.download(
        'assets/downloads/resume.pdf',
        (await getTemporaryDirectory()).path,
      );
  }

  // Future<bool> _requestWritePermission() async {
  //   await Permission.storage.request();
  //   return Permission.storage.request().isGranted;
  // }
}
