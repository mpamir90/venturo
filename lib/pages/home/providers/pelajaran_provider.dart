import 'package:get/get.dart';

class PelajaranProvider extends GetConnect {
  // Get request
  Future<Response> getPelajaran() =>
      get('http://tes-mobile.landa.id/index.php');
}
