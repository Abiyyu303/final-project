import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/data/wisata_data.dart';
import 'package:my_first_flutterapp/model/wisata_model.dart';
import 'package:my_first_flutterapp/widgets/gridwisata_widget.dart';

import 'detailwisata_page.dart';

class GridWisataPage extends StatelessWidget {
  const GridWisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid Wisata"),
        ),
        body: gridWisata());
  }
}
