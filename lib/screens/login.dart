import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import 'package:singanote/blocs/auth_bloc.dart';
import 'package:singanote/screens/home.dart';

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
            builder: (context) => const HomeScreen(),
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
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: const Text('Sign in with Google'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 90),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                maxRadius: 100,
                backgroundImage: NetworkImage(
                    'https://as1.ftcdn.net/v2/jpg/04/65/47/10/500_F_465471053_Y7IDWgocxAd4WYSKD8GmnwoYGhw2BYCU.jpg'),
              ),

              const SizedBox(
                height: 50.0,
              ),

              const Text('SINGANOTE',
                  style: TextStyle(
                    fontSize: 30.0,
                  )),
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
