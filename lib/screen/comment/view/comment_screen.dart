import 'package:flutter/material.dart';
import 'package:jason_practice/screen/comment/provider/comment_provider.dart';
import 'package:provider/provider.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  CommentProvider? providerR;
  CommentProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<CommentProvider>().getCommentJson();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<CommentProvider>();
    providerR = context.read<CommentProvider>();
    return ListView.builder(
      itemCount: providerW!.commentJsonList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("${providerW!.commentJsonList[index].name}"),
        );
      },
    );
  }
}
