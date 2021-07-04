import 'package:flutter/material.dart';
import 'package:hack_the_gap/homemaker_pg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String text = 'Login';
  String textAlt = 'Sign up';
  String textAltAdd = 'Don\'t have an account?';
  String buttonText = 'Login';
  bool signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepPurpleAccent,
          title: Row(
            children: <Widget>[
              Image.asset(
                "assets/homacationlogo.png",
                height: 40,
                width: 40,
              ),
              Text(" Homacation"),
            ],
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      text,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    cursorColor: Colors.black,
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    cursorColor: Colors.black,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                // ignore: deprecated_member_use

                Container(
                    height: 60,
                    width: 360,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      textColor: Colors.white,
                      color: Colors.deepPurpleAccent,
                      child: Text(
                        buttonText,
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeMaker()));
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(textAltAdd),
                    // ignore: deprecated_member_use
                    FlatButton(
                      textColor: Colors.indigo,
                      child: Text(
                        textAlt,
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        setState(() {
                          if (signup == true) {
                            text = 'Sign up';
                            textAlt = 'Sign in';
                            textAltAdd = 'Already have an account? ';
                            buttonText = 'Register';
                            signup = false;
                          } else {
                            text = 'Sign in';
                            textAlt = 'Sign up';
                            textAltAdd = 'Don\'t have an account? ';
                            buttonText = 'Login';
                            signup = true;
                          }
                        });
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
