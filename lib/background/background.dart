// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:singanote/screens/login.dart';

class background extends StatelessWidget {
  const background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onDoubleTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LoginScreen();
          }));
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/sgn1.png'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
