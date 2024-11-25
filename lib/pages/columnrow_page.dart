// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ColumnRowPage extends StatefulWidget {
  const ColumnRowPage({super.key});

  @override
  State<ColumnRowPage> createState() => _ColumnRowPageState();
}

class _ColumnRowPageState extends State<ColumnRowPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column & Row",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.indigo,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              )
            ],
          ),
        )),
      ),
    );
  }
}
