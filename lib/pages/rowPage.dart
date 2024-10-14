import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Row",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: SafeArea(
          child: Center(
              child: Row(
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
                color: Colors.blue,
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              )
            ],
          )),
        ),
      ),
    );
  }
}
