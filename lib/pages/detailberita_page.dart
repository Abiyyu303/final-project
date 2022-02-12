import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/model/berita_model.dart';
import 'package:my_first_flutterapp/pages/webberita_page.dart';

class DetailBeritaPage extends StatelessWidget {
  Articles? berita;
  DetailBeritaPage({Key? key, this.berita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(berita?.author ?? "-"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WebBeritaPage(
                              berita: berita,
                            )));
              },
              icon: const Icon(Icons.open_in_browser))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                child: Image.network(
                  berita?.urlToImage ?? "",
                  fit: BoxFit.fill,
                )),
            Text(
              berita?.title ?? "-",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Detail berita : ${berita?.description}",
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
