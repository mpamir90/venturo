import 'dart:convert';

import 'package:get/get.dart';
import 'package:venturo/models/pelajaran_model.dart';
import 'package:venturo/pages/home/providers/pelajaran_provider.dart';

class HomeController extends GetxController
    with StateMixin<List<PelajaranModel>> {
  @override
  void onInit() async {
    final response = await PelajaranProvider().getPelajaran();
    final Map<String, dynamic> json = jsonDecode(response.bodyString!);
    List<PelajaranModel> pelajarans =
        (json["data"] as List).map((e) => PelajaranModel.fromJson(e)).toList();
    print(json.toString());
    change(pelajarans, status: RxStatus.success());
    super.onInit();
  }
}
