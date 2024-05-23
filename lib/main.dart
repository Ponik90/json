import 'package:flutter/material.dart';
import 'package:jason_practice/screen/album/provider/album_provider.dart';
import 'package:jason_practice/screen/comment/provider/comment_provider.dart';
import 'package:jason_practice/screen/country/provider/country_provider.dart';
import 'package:jason_practice/screen/photo/provider/photo_provider.dart';
import 'package:jason_practice/screen/post/provider/post_json_provider.dart';
import 'package:jason_practice/screen/todos/provider/todos_provider.dart';
import 'package:jason_practice/screen/user/provider/user_provider.dart';
import 'package:jason_practice/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: PostJsonProvider(),
        ),
        ChangeNotifierProvider.value(
          value: CommentProvider(),
        ),
        ChangeNotifierProvider.value(
          value: AlbumProvider(),
        ),
        ChangeNotifierProvider.value(
          value: PhotoProvider(),
        ),
        ChangeNotifierProvider.value(
          value: TodosProvider(),
        ),
        ChangeNotifierProvider.value(
          value: UserProvider(),
        ),

        ChangeNotifierProvider.value(
          value: CountryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: screen,
      ),
    ),
  );
}
