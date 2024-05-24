import 'package:flutter/material.dart';
import 'package:jason_practice/screen/news/provider/news_provider.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  NewsProvider? providerR;
  NewsProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<NewsProvider>();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<NewsProvider>();
    providerR = context.read<NewsProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Json"),
      ),
      body:Text("${providerW!.news}")
    );
  }
}
