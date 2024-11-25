import 'package:flutter/material.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Center",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("This is ini the center of the screen"),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.indigo,
              child: const Text(
                "Text without center",
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
                  "Text without center",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
