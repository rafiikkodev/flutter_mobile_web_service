import 'package:flutter/material.dart';
import 'package:flutter_mobile_web_service_praktik/pages/restapi/user_model.dart';
import 'package:flutter_mobile_web_service_praktik/pages/restapi/user_service.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> listUser = <UserModel>[];
  @override
  void initState() {
    super.initState();
    getDataUser();
  }

  void getDataUser() async {
    UserService userService = UserService();
    List<UserModel> listUserTemp = await userService.fetchUser();
    if (listUserTemp.isNotEmpty) {
      setState(() {
        listUser = listUserTemp;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Users",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemCount: listUser.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) => ListTile(
          leading: ClipOval(
            child: Image.network(
              listUser[index].avatar,
              width: 52,
              height: 52,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            "${listUser[index].firstName} ${listUser[index].lastName}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            listUser[index].email,
            style: const TextStyle(fontSize: 12),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(
          height: 0,
        ),
      )),
    );
  }
}
