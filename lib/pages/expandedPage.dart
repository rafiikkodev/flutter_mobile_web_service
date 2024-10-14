import 'package:flutter/material.dart';

class Expandedpage extends StatefulWidget {
  const Expandedpage({super.key});

  @override
  State<Expandedpage> createState() => _ExpandedpageState();
}

class _ExpandedpageState extends State<Expandedpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Expanded",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("The container below dont use expansion"),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo,
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text("The container below uses expansion"),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo,
                )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                ))
              ],
            )
          ],
        ),
      )),
    ));
  }
}
