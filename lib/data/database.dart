import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void creatInitialData() {
    //toDoList = [
    //  ["[Click the '+' to add a new task]", false],
    //  ["[Slide to the right and to show the 'Delete Button']", false],
    //];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
