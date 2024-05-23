import 'package:flutter/material.dart';
import 'package:jason_practice/screen/album/provider/album_provider.dart';
import 'package:provider/provider.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  AlbumProvider? providerR;
  AlbumProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<AlbumProvider>().getAlbumList();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<AlbumProvider>();
    providerR = context.read<AlbumProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Album Json"),
      ),
      body: ListView.builder(
        itemCount: providerW!.albumJsonList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.albumJsonList[index].title}"),
          );
        },
      ),
    );
  }
}
