import 'package:flutter/material.dart';
import 'package:hack_the_gap/login.dart';
import 'package:provider/provider.dart';
import 'models/notify.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskListListener>(
        create: (context) {
          return TaskListListener();
        },
        child: MaterialApp(
          home: LoginPage(),
          theme: ThemeData(
              accentColor: Colors.deepPurple,
              primaryColor: Colors.deepPurpleAccent),
        ));
  }
}
