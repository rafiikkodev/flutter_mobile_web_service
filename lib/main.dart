// ignore_for_file: unnecessary_const, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_mobile_web_service_praktik/pages/center_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/expanded_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/login_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/restapi/user_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/stack_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/widget_listview/listview.dart';
import 'package:flutter_mobile_web_service_praktik/pages/widget_listview/listview_builder.dart';
import 'package:flutter_mobile_web_service_praktik/pages/widget_listview/listview_custom.dart';
import 'package:flutter_mobile_web_service_praktik/pages/widget_listview/listview_separated.dart';

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
    return const MaterialApp(home: LoginPage());
  }
}
