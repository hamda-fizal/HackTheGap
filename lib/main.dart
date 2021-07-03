import 'package:flutter/material.dart';
import 'package:hack_the_gap/login.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    theme: ThemeData(
        accentColor: Colors.deepPurple, primaryColor: Colors.deepPurpleAccent),
  ));
}
