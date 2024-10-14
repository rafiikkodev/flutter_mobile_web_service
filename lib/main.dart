// ignore_for_file: unnecessary_const, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_mobile_web_service_praktik/pages/columnPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/columnrowPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/containerPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/rowPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/expandedPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/sizedBoxPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/textPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/childPage.dart';
import 'package:flutter_mobile_web_service_praktik/pages/tugas1.dart';

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
    return const MaterialApp(home: ColumnRowPage());
  }
}
