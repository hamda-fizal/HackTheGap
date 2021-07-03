import 'package:flutter/material.dart';
import 'models/task.dart';

class AddTask extends StatefulWidget {
  final List<Task> taskList;
  AddTask({this.taskList});

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  String newTaskName;

  Widget build(BuildContext context) {
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
              style: TextStyle(color: Colors.purpleAccent, fontSize: 24),
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
                    widget.taskList.add(Task(taskName: newTaskName));
                  });

                print(widget.taskList[0].taskName);
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
  }
}
