import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column",
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
              Container(
                width: 100,
                height: 100,
                color: Colors.indigo,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
