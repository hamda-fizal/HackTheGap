import 'package:flutter/material.dart';
import 'package:hack_the_gap/homemaker_pg.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Please log in')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.deepPurpleAccent)),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.deepPurpleAccent,
                      border: OutlineInputBorder(),
                      labelText: 'Password'),
                )),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeMaker()));
              },
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurpleAccent,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
      ),
    );
  }
}
