import 'package:flutter/material.dart';
import 'package:jason_practice/screen/photo/provider/photo_provider.dart';
import 'package:provider/provider.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  PhotoProvider? providerR;
  PhotoProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<PhotoProvider>().getPhotoList();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<PhotoProvider>();
    providerR = context.read<PhotoProvider>();
    return ListView.builder(
      itemCount: providerW!.photoJsonList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("${providerW!.photoJsonList[index].title}"),
        );
      },
    );
  }
}
