import 'dart:convert';

import 'package:get/get.dart';
import 'package:venturo/pages/home/providers/pelajaran_provider.dart';

class HomeController extends GetxController
    with StateMixin<Map<String, dynamic>> {
  late Map<String, dynamic> allPelajaran;

  @override
  void onInit() async {
    final response = await PelajaranProvider().getPelajaran();
    allPelajaran = jsonDecode(response.bodyString!);
    print(allPelajaran.toString());
    change(allPelajaran, status: RxStatus.success());
    super.onInit();
  }
}
