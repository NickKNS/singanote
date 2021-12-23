// ignore_for_file: unnecessary_new

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import 'package:singanote/blocs/auth_bloc.dart';
import 'package:singanote/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late StreamSubscription<User> loginStateSubscription;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    authBloc.currentUser.listen((project) async {
      if (project != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Singa(),
          ),
        );
      }
    });
    super.initState();
  }

  // @override
  //   void dispose() {
  //     loginStateSubscription.cancel();
  //     super.dispose();
  //   }

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBloc>(context);

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/10.jpeg'), fit: BoxFit.cover)),
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 90),
      
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          ClipRRect(
            borderRadius: new BorderRadius.circular(45),
            child: const Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/1.png'),
              width: 200,
              height: 200,
            ),
          ),

          // const SizedBox(
          //   height: 50.0,
          // ),

        //  Text('SINGANOTE',
        //       style:
        //        GoogleFonts.leckerliOne(fontSize: 35,color:Colors.brown[200]),
        //       ),
          // Image.network(
          //     'https://www.tv360entertainment.com/wp-content/uploads/2019/05/Logo-dpu.png',
          //     width: 200),
          const SizedBox(
            height: 50.0,
          ),
          SignInButton(
            Buttons.Google,
            text: 'Sign in with Google',
            onPressed: () => authBloc.loginGoogle(),
          ),
        ],
      ),
    ));
  }
}
