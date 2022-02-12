import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/data/wisata_data.dart';
import 'package:my_first_flutterapp/widgets/listwisata_widget.dart';
import 'detailwisata_page.dart';
import 'package:my_first_flutterapp/model/wisata_model.dart';

class ListWisataPage extends StatelessWidget {
  const ListWisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Wisata"),
      ),
      body: listWisata()
    );
  }
}
