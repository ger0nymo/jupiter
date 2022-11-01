import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                    'Signed in as ${FirebaseAuth.instance.currentUser?.displayName}'),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: const Text('Go to Home Screen'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
