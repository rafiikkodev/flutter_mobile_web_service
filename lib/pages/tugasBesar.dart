import 'package:flutter/material.dart';
import 'package:flutter_mobile_web_service_praktik/pages/align_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/child_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/column_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/columnrow_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/container_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/elevatedbutton_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/expanded_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/icon_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/image_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/padding_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/row_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/sizedBox_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/stack_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/text_page.dart';
import 'package:flutter_mobile_web_service_praktik/pages/textfield_page.dart';

class TugasBesarPage extends StatefulWidget {
  const TugasBesarPage({super.key});

  @override
  State<TugasBesarPage> createState() => _TugasBesarPageState();
}

class _TugasBesarPageState extends State<TugasBesarPage> {
  final List<String> containerTexts = [
    "Text",
    "Container",
    "Row",
    "Column",
    "Column & Row",
    "Elevated Button",
    "Text Field",
    "Align",
    "Child",
    "Expanded",
    "Padding",
    "SizedBox",
    "Stack",
    "Icon",
    "Image",
  ];

  final List<Widget> pages = [
    const TextPage(),
    const ContainerPage(),
    const RowPage(),
    const ColumnPage(),
    const ColumnRowPage(),
    const ElevatedButtonPage(),
    const TextFieldPage(),
    const AlignPage(),
    const ChildPage(),
    const ExpandedPage(),
    const PaddingPage(),
    const SizedBoxPage(),
    const StackPage(),
    const IconPage(),
    const ImagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bab 2 Widget",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              itemCount: containerTexts.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pages[index],
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 218, 218),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        containerTexts[index],
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
