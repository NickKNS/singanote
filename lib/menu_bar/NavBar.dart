// ignore_for_file: file_names, prefer_typing_uninitialized_variables, avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:singanote/screens/home.dart';

class NvaBar extends StatelessWidget {
  const NvaBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.orange,
        child: ListView(children: [
          const SizedBox(
            height: 50,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            tileColor: Colors.orange[50],
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
           const SizedBox(
            height: 2,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            tileColor: Colors.orange[50],
            title: const Text('Friends'),
            onTap: () => null,
          ),
          const SizedBox(
            height: 2,
          ),
          ListTile(
            leading: const Icon(Icons.share),
            tileColor: Colors.orange[50],
            title: const Text('Share'),
            onTap: () => null,
          ),
        ]));
  }
}
