import 'package:flutter/material.dart';
import 'package:jason_practice/screen/user/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserProvider? providerR;
  UserProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<UserProvider>().getUserData();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<UserProvider>();
    providerR = context.read<UserProvider>();
    return ListView.builder(
      itemCount: providerW!.userJsonList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("${providerW!.userJsonList[index].address!.geo!.lat}"),
        );
      },
    );
  }
}
