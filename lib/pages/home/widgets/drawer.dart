import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.blue,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Dhena Aprilia",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "09977789",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Kelas VII-SMP A",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const ItemDrawer(
                iconData: Icons.home,
                title: "Beranda",
              ),
              const ItemDrawer(
                iconData: Icons.tv,
                title: "Ujian",
              ),
              const ItemDrawer(
                iconData: Icons.task,
                title: "Hasil Ujian",
              ),
              const ItemDrawer(
                iconData: Icons.notifications,
                title: "Notifikasi",
              ),
              const ItemDrawer(
                iconData: Icons.library_books,
                title: "Perpustakaan Digital",
              ),
              const ItemDrawer(
                iconData: Icons.person,
                title: "Profile",
              ),
              const ItemDrawer(
                iconData: Icons.logout,
                title: "Keluar",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemDrawer extends StatelessWidget {
  const ItemDrawer({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        iconData,
        color: Colors.white,
        size: 30,
      ),
      minLeadingWidth: 0,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
