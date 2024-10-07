// ignore_for_file: unnecessary_const, unnecessary_import

import 'package:flutter/material.dart';
// import 'package:flutter_mobile_web_service_praktik/childPage.dart';
// import 'package:flutter_mobile_web_service_praktik/sizedBox.dart';
import 'package:flutter_mobile_web_service_praktik/tugas1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TugasSatu());
  }
}
