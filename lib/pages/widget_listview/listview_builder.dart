import 'package:flutter/material.dart';

class ListviewBuilderPage extends StatefulWidget {
  const ListviewBuilderPage({super.key});

  @override
  State<ListviewBuilderPage> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilderPage> {
  List<String> listData = List<String>.generate(100, (index) => "Data $index"); // deklarasi list data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Builder",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: listData.length,
        shrinkWrap: true, // untuk menentukan apakah ukuran ListView menyesuaikan isinya
        physics: const BouncingScrollPhysics(), // BouncingScrollPhysics memberikan efek bouncing di akhir scroll
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => ListTile(
          dense: true,
          title: Text(
            listData[index],
            style: const TextStyle(fontSize: 16),
          ),
        ),
      )),
    );
  }
}
