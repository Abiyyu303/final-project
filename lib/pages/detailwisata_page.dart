import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/model/wisata_model.dart';
import 'webwisata_page.dart';

class DetailWisataPage extends StatelessWidget {
  WisataModel? wisataDetail;
  DetailWisataPage({Key? key, this.wisataDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wisataDetail?.namaWisata ?? "-"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WebWisataPage(
                              wisata: wisataDetail,
                            )));
              },
              icon: const Icon(Icons.open_in_browser))
        ],
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              child: Image.asset(
                "assets/gambar/${wisataDetail?.gambar}",
                fit: BoxFit.fill,
              )),
          Text(
            wisataDetail?.namaWisata ?? "-",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Alamat : ${wisataDetail?.alamatWisata}",
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
