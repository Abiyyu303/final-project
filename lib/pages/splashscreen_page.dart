import 'dart:async';

import 'package:flutter/material.dart';
import 'beranda_page.dart';
import 'login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  //method yang pertama x dijalankan ketika mengakses suatu halaman dengan widget statefullwidget
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/gambar/logoina.png",
            color: Colors.red,
            width: 200,
            height: 200,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Aku Hotel",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontFamily: "batmfo__"),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          const CircularProgressIndicator(
            color: Colors.red,
          )
        ],
      )),
    );
  }

  setLoading() {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      bool login = preferences.getBool("login") ?? false;
      if (login) {
        //untuk perpindahan halaman
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BerandaPage()));
      } else {
        //untuk perpindahan halaman
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    });
  }
}
