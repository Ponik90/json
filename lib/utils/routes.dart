import 'package:flutter/material.dart';
import 'package:jason_practice/screen/home/view/home_screen.dart';
import 'package:jason_practice/screen/album/view/album_screen.dart';
import 'package:jason_practice/screen/comment/view/comment_screen.dart';
import 'package:jason_practice/screen/country/view/country_screen.dart';
import 'package:jason_practice/screen/photo/view/photo_screen.dart';
import 'package:jason_practice/screen/post/view/post_screen.dart';
import 'package:jason_practice/screen/todos/view/todos_screen.dart';
import 'package:jason_practice/screen/user/view/user_screen.dart';

import '../screen/news/view/news_screen.dart';

Map<String, WidgetBuilder> screen = {
  '/': (context) => const HomeScreen(),
  'postJson': (context) => const PostScreen(),
  'commentJson': (context) => const CommentScreen(),
  'albumJson': (context) => const AlbumScreen(),
  'photoJson': (context) => const PhotoScreen(),
  'todosJson': (context) => const TodosScreen(),
  'userJson': (context) => const UserScreen(),
  'countryJson': (context) => const CountryScreen(),
  'newsJson': (context) => const NewsScreen(),
};
