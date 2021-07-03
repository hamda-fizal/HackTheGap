import 'package:flutter/material.dart';
import 'add_task.dart';
import 'models/task.dart';

class HomeMaker extends StatefulWidget {
  @override
  _HomeMakerState createState() => _HomeMakerState();
}

class _HomeMakerState extends State<HomeMaker> {
  List<Task> taskList = [];
  String newTaskName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "My Task",
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: taskList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(taskList[index].taskName),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 200,
                  color: Color(0xff757575),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Add Task',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purpleAccent, fontSize: 24),
                        ),
                        TextField(
                          autofocus: true,
                          textAlign: TextAlign.center,
                          onChanged: (val) {
                            newTaskName = val;
                          },
                        ),
                        FlatButton(
                          color: Colors.purple,
                          onPressed: () {
                            if (newTaskName != null)
                              setState(() {
                                taskList.add(Task(taskName: newTaskName));
                              });

                            print(taskList[0].taskName);
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Add Task',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                );
              },
              isScrollControlled: true);
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
