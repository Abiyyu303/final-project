import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_flutterapp/model/berita_model.dart';
import 'package:my_first_flutterapp/network/api.dart';
import 'package:my_first_flutterapp/pages/detailberita_page.dart';

class BeritaPage extends StatefulWidget {
  const BeritaPage({Key? key}) : super(key: key);

  @override
  _BeritaPageState createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  bool? loading;

  List<Articles>? responseBerita;

  @override
  void initState() {
    // TODO: implement initState
    getDataBerita();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Portal Berita"),
        ),
        body: loading == true
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: responseBerita?.length,
                itemBuilder: (context, index) {
                  Articles? berita = responseBerita?[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailBeritaPage(
                                    berita: berita,
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        elevation: 7,
                        shadowColor: Colors.red[900],
                        color: Colors.red[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Image.network(
                                berita?.urlToImage ??
                                    "https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg",
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(berita?.title ?? "-",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(berita?.publishedAt ?? "-",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }));
  }

  Future<void> getDataBerita() async {
    loading = true;
    var res = await http.get(Uri.parse(API.BASE_URL));
    if (res.statusCode == 200) {
      print("Data berhasil ditangkap");
      var data = json.decode(res.body);
      var berita = data["articles"] as List;
      setState(() {
        loading = false;
        responseBerita =
            berita.map((value) => Articles.fromJson(value)).toList();
      });
    } else {
      setState(() {
        loading = false;
      });
    }
  }
}
