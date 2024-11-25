import 'package:flutter/material.dart';

class SizedBoxPage extends StatefulWidget {
  const SizedBoxPage({super.key});

  @override
  State<SizedBoxPage> createState() => _SizedBoxPageState();
}

class _SizedBoxPageState extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SizedBox",
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This text and "),
                  Text("the next text have no distance")
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("this text and"),
                  SizedBox(
                    width: 24,
                  ),
                  Text("The next text have distance")
                ],
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.indigo,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.pink,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
