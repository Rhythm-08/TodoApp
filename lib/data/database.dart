import 'package:hive_flutter/adapters.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _mybox = Hive.box('mybox');
//run method if first time opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Excersise", false],
    ];
  }
  //load the data from the database
  void loadData(){
    toDoList= _mybox.get("TODOLIST");
  }

  //update the database
void updateDataBase(){
  _mybox.put("TODOLIST", toDoList);
}
}
