import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venturo/pages/home/controller/home_controller.dart';

import 'widgets/drawer.dart';
import 'widgets/item_pelajaran.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Materi Pembelajaran"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        NetworkImage("http://tes-mobile.landa.id/top_home.png"),
                    fit: BoxFit.fill),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 130,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.lightBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Kelas",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "VII - A",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: controller.obx(
                (value) => Column(
                    children: List.generate(
                  value!.length,
                  (index) => ItemPelajaran(
                      videoId: value[index].youTubeID,
                      title: value[index].nama),
                )
                    //     List.generate(
                    //   value!["data"].length,
                    //   (index) => ItemPelajaran(
                    //     videoId: value["data"][index]["detail"][0]["youtube_id"],
                    //     title: value["data"][index]["nama"],
                    //   ),
                    // ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
