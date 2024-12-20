import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Stack & Positioned",
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
            child: Stack(
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                )),
            Positioned(
                left: 0,
                top: 0,
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.indigo,
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
