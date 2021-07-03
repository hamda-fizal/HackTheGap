import 'package:flutter/material.dart';
import 'task.dart';
import 'family_members.dart';

class TaskListListener extends ChangeNotifier {
  List<Task> tasksList = [];
  List<FamilyMembers> memberList = [];

  void addTask(String newTask) {
    tasksList.add(Task(taskName: newTask));
    notifyListeners();
  }

  void addMember(String newTask) {
    memberList.add(FamilyMembers(name: newTask));
    notifyListeners();
  }
}
