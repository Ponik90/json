import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/post_json_provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  PostJsonProvider? providerR;
  PostJsonProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<PostJsonProvider>().getPostJson();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<PostJsonProvider>();
    providerW = context.watch<PostJsonProvider>();
    return ListView.builder(
      itemCount: providerW!.postJsonList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text("${providerW!.postJsonList[index].id}"),
          title: Text("${providerW!.postJsonList[index].title}"),
        );
      },
    );
  }
}
