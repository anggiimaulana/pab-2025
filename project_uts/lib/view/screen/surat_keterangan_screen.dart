import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_uts/config/colors.dart';
import 'package:project_uts/model/surat_models.dart';
import 'package:project_uts/view/widget/category_sk.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int selectedIndex = 0;
  final List pages = [
    Scaffold(),
    const SuratKeteranganScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      bottomNavigationBar: Container(
        height: 65, // Tambah tinggi navbar
        decoration: BoxDecoration(
          color: backgroundColor1, // Warna background
          borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.white60,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_14, size: 26),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.document, size: 26),
              label: "Pengajuan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.wallet, size: 26),
              label: "Bansos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.camera, size: 26),
              label: "Pengaduan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.gallery, size: 26),
              label: "Berita",
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}

class SuratKeteranganScreen extends StatelessWidget {
  const SuratKeteranganScreen({super.key});

  void navigateToRoute(BuildContext context, String? route) {
    if (route?.isNotEmpty ?? false) {
      Navigator.pushNamed(context, route!);
    } else {
      print("Route kosong atau null");
    }
  }

  List<Widget> buildCategoryItems(BuildContext context) {
    List<Widget> items = [];
    for (var surat in listCategorySk) {
      items.add(
        GestureDetector(
          onTap: () => navigateToRoute(context, surat.route),
          child: CardCategorySk(
            title: surat.title,
            icon: surat.icon,
            color: surat.color,
            route: surat.route,
          ),
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Pengajuan Surat Keterangan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        backgroundColor: backgroundColor1,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.025,
              right: size.width * 0.05,
              left: size.width * 0.05,
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Silahkan pilih surat keterangan yang ingin Anda ajukan!",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 0.80,
                crossAxisSpacing: size.width * 0.03,
                mainAxisSpacing: size.height * 0.02,
                children: buildCategoryItems(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
