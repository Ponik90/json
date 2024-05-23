import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json List"),
      ),
      body: Column(
        children: [
          json(
            icon: Icons.local_post_office,
            name: "Post Json",
            link: 'postJson',
          ),
          json(
            icon: Icons.comment,
            name: "Comment Json",
            link: 'commentJson',
          ),
          json(
            icon: Icons.photo_album_rounded,
            name: "Album Json",
            link: 'albumJson',
          ),
          json(
            icon: Icons.photo,
            name: "Photos Json",
            link: 'photoJson',
          ),
          json(
            icon: Icons.check_box,
            name: "Todos Json",
            link: 'todosJson',
          ),
          json(
            icon: Icons.person,
            name: "User Json",
            link: 'userJson',
          ),
          json(
            icon: Icons.flag,
            name: "Country Json",
            link: 'countryJson',
          ),
          json(
            icon: Icons.newspaper_outlined,
            name: "News Json",
            link: 'newsJson',
          ),
        ],
      ),
    );
  }

  Widget json({required icon, required name, required link}) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, link);
      },
      leading: Icon(
        icon,
        color: Colors.blue,
      ),
      title: Text(name),
    );
  }
}
