import 'package:flutter/material.dart';
import 'package:hack_the_gap/homemaker_pg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeMaker()));
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
