import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/widgets/gridwisata_widget.dart';
import 'package:my_first_flutterapp/widgets/listwisata_widget.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        bottom: TabBar(
            controller: controller,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                text: "List Wisata",
              ),
              Tab(
                text: "Grid Wisata",
              ),
              Tab(
                text: "Gambar Wisata",
              ),
            ]),
      ),
      body: TabBarView(controller: controller, children: [
        listWisata(),
        gridWisata(),
        Center(child: Text("ImageView"))
      ]),
    );
  }
}
