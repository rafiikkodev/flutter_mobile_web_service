import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  bool switchEnable = true; // deklarasi variable state

  void onChangeSwitch({required bool value}) {
    setState(() {
      switchEnable = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const Icon(Icons.airplanemode_active_rounded),
                title: const Text(
                  "Airplane Mode",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Transform.translate(
                  offset: const Offset(10, 0),
                  child: Switch(
                      value: switchEnable,
                      onChanged: (value) => onChangeSwitch(value: value)),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.wifi_rounded),
                title: Text(
                  "Wi-Fi",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.chevron_right_rounded),
              ),
              const ListTile(
                leading: Icon(Icons.bluetooth_rounded),
                title: Text(
                  "Bluetooth",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.chevron_right_rounded),
              )
            ],
          ),
        ));
  }
}
