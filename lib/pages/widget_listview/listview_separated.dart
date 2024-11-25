import 'package:flutter/material.dart';

class ListviewSeparatedPage extends StatefulWidget {
  const ListviewSeparatedPage({super.key});

  @override
  State<ListviewSeparatedPage> createState() => _ListviewSeparatedPageState();
}

class _ListviewSeparatedPageState extends State<ListviewSeparatedPage> {
  List<String> listData = List<String>.generate(
      100, (index) => "Data $index"); // deklarasi list data
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
          child: ListView.separated(
            itemCount: listData.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => ListTile(
              dense: true,
              title: Text(
                listData[index],
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              height: 0,
            ),
          ),
        ));
  }
}
