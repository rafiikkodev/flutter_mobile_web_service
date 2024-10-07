// ignore_for_file: unnecessary_const, unnecessary_import

import 'package:flutter/material.dart';

void main() {
  runApp(const ChildPage());
}

class ChildPage extends StatefulWidget {
  const ChildPage({super.key});

  @override
  State<ChildPage> createState() => _ChildPageState();
}

class _ChildPageState extends State<ChildPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Center",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            backgroundColor: Colors.teal.shade200),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("This text is in the center of the screen"),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.indigo,
                  child: const Text(
                    "text without center",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Text with center",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
