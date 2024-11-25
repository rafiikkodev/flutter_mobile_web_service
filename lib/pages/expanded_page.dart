import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Expanded",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
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
