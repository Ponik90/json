import 'package:flutter/material.dart';
import 'package:jason_practice/screen/album/view/album_screen.dart';
import 'package:jason_practice/screen/comment/view/comment_screen.dart';
import 'package:jason_practice/screen/country/view/country_screen.dart';
import 'package:jason_practice/screen/photo/view/photo_screen.dart';
import 'package:jason_practice/screen/post/view/post_screen.dart';
import 'package:jason_practice/screen/todos/view/todos_screen.dart';
import 'package:jason_practice/screen/user/view/user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Json Practice"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Country",
              ),
              Tab(
                text: "Post",
              ),
              Tab(
                text: "Comment",
              ),
              Tab(
                text: "Albums",
              ),
              Tab(
                text: "Photos",
              ),
              Tab(
                text: "Todos",
              ),
              Tab(
                text: "User",
              ),

            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CountryScreen(),
            PostScreen(),
            CommentScreen(),
            AlbumScreen(),
            PhotoScreen(),
            TodosScreen(),
            UserScreen(),
          ],
        ),
      ),
    );
  }
}
