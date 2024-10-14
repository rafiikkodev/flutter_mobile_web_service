// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
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
          backgroundColor: Colors.teal.shade200,
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.indigo.shade300, width: 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 16,
                        spreadRadius: 4,
                        offset: Offset(0, 4))
                  ]),
              child: const Center(
                child: Text(
                  "Hello World!",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
