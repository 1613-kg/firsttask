import 'package:firebase_auth/firebase_auth.dart';
import 'package:firsttask/Day%2010/Authentication/screens/homeScreen.dart';
import 'package:firsttask/Day%2010/Authentication/services/facebook_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../services/auth.dart';

class loginScreenAuth extends StatelessWidget {
  loginScreenAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to app"),
      ),
      body: Center(
        child: Column(
          children: [
            SignInButton(Buttons.Google, onPressed: () async {
              await signInWithGoogle();
              String? email = await FirebaseAuth.instance.currentUser!.email;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homeScreen(email)));
            }),
            SignInButton(Buttons.Facebook, onPressed: () async {
              await signInWithFacebook();
              final userData = await FacebookAuth.instance.getUserData();
              String emailFacebook = userData['email'];
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => homeScreen(emailFacebook)));
            })
          ],
        ),
      ),
    );
  }
}
