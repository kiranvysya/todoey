import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String taskName;
  final Function addTask;

  AddTaskScreen({this.addTask});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                TextField(
                  autofocus: true,
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                  cursorWidth: 10,
                  onChanged: (value) {
                    taskName = value;
                    //print('$taskName pressed');
                  },
                ),
                FlatButton(
                  child: Text('Add'),
                  color: Colors.blueAccent,
                  onPressed: () {
                    addTask(taskName);
                  },
                ),
              ]),
        ));
  }
}
