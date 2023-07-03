import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
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
    final bool hasPermission = await _requestWritePermission();
    if (!hasPermission) return;
    print(hasPermission);
    final Dio dio = Dio();
    final appDocDirectory = await getApplicationDocumentsDirectory();
    print('hello $appDocDirectory');
      await dio.download(
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
        '${appDocDirectory.path}/resume',
      );
      OpenFile.open('${appDocDirectory.path}/resume', type: 'application/pdf');
  }

  Future<bool> _requestWritePermission() async {
    await Permission.storage.request();
    return Permission.storage.request().isGranted;
  }
}
