import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutterapp/pages/berita_page.dart';

import 'package:my_first_flutterapp/pages/whatsapp_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'camera_page.dart';
import 'gridwisata_page.dart';
import 'listwisata_page.dart';
import 'login_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Beranda"),
          actions: [
            IconButton(
                onPressed: () async {
                  tampilAlert(context);
                },
                icon: const Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: Colors.white,
                ))
          ],
        ),
        body: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  tampilanMenu(Colors.red[900], "assets/gambar/hotel.png",
                      "List Wisata", context, const ListWisataPage()),
                  tampilanMenu(Colors.green[800], "assets/gambar/menu.png",
                      "Grid Wisata", context, const GridWisataPage())
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  tampilanMenu(Colors.blue[800], "assets/gambar/camera.png",
                      "Camera", context, const CameraPage()),
                  tampilanMenu(Colors.purple[900], "assets/gambar/whatsapp.png",
                      "WhatsApp", context, const WhatsAppPage())
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  tampilanMenu(Colors.amber[900], "assets/gambar/news.png",
                      "Berita", context, const BeritaPage()),
                ],
              ),
            ),
          ],
        ));
  }

  Widget tampilanMenu(Color? warna, String? gambar, String? text,
      BuildContext context, Widget kelasTujuan) {
    return Flexible(
      //gesture detector berfungsi untuk membungkus suatu widget agar dapat diklik
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => kelasTujuan));
          },
          child: Container(
            width: double.infinity,
            color: warna,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  gambar ?? "-",
                  width: 100,
                  height: 100,
                ),
                Text(text ?? "-")
              ],
            ),
          ),
        ),
      ),
    );
  }

  void tampilAlert(BuildContext context) {
    Widget cancel = TextButton(
        onPressed: () {
          //kembali kehalaman sebelumnya
          Navigator.pop(context);
        },
        child: const Text("Cancel"));

    Widget yes = TextButton(
        onPressed: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.clear();
          //pindah ke halaman login setelah logout
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: const Text("Yes"));

    AlertDialog alert = AlertDialog(
      title: const Text("Keluar Aplikasi"),
      content: const Text("Apakah anda yakin keluar aplikasi ?"),
      actions: [cancel, yes],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }
}
