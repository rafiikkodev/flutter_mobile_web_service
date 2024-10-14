import 'package:flutter/material.dart';

void main() {
  runApp(const TugasSatu());
}

class TugasSatu extends StatefulWidget {
  const TugasSatu({super.key});

  @override
  State<TugasSatu> createState() => _TugasSatuState();
}

class _TugasSatuState extends State<TugasSatu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Implementasi Center dengan Container",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Identitas Profil Mahasiswa",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                ),
                child: const Text(
                  "NPM : 5220411131",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Text(
                  "Nama : Rafi Ikko Rastyo",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(color: Color(0xffe90bd6)),
                child: const Text(
                  "Prodi : Informatika Sarjana",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
