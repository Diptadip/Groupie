import 'package:groupie_chat/Screens/HomeScreen.dart';
import 'package:groupie_chat/Checklist/screens/home.dart';
import 'package:groupie_chat/Authenticate/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return Home();
    } else {
      return LoginScreen();
    }
  }
}