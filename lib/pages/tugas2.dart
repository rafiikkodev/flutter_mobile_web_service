import 'package:flutter/material.dart';

class TugasDua extends StatefulWidget {
  const TugasDua({super.key});

  @override
  State<TugasDua> createState() => _TugasDuaState();
}

class _TugasDuaState extends State<TugasDua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.indigo,
                          width: 1.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 16,
                              spreadRadius: 4,
                              offset: Offset(0, 4))
                        ]),
                    child: const Center(
                      child: Text(
                        'Hello World!',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.indigo,
                          width: 1.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 16,
                              spreadRadius: 4,
                              offset: Offset(0, 4))
                        ]),
                    child: const Center(
                      child: Text(
                        'Hello World!',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.indigo,
                          width: 1.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 16,
                              spreadRadius: 4,
                              offset: Offset(0, 4))
                        ]),
                    child: const Center(
                      child: Text(
                        'Hello World!',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.indigo,
                          width: 1.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 16,
                              spreadRadius: 4,
                              offset: Offset(0, 4))
                        ]),
                    child: const Center(
                      child: Text(
                        'Hello World!',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
