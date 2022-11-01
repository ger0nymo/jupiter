import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jupiter/screens/home_screen.dart';
import 'package:jupiter/screens/login_screen.dart';

class RedirecterScreen extends StatelessWidget {
  RedirecterScreen({Key? key}) : super(key: key);

  final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      user == null ? LoginScreen() : HomeScreen(),
    ]);
  }
}
