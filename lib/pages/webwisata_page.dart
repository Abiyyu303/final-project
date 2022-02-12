import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:my_first_flutterapp/model/wisata_model.dart';

class WebWisataPage extends StatelessWidget {
  final WisataModel? wisata;
  const WebWisataPage({Key? key, this.wisata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: wisata!.webWisata!,
      // appBar: AppBar(
      //   title: Text(wisata!.namaWisata!),
      // ),
    );
  }
}
