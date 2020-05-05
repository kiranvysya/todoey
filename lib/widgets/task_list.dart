import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).taskList[index].name,
          isChecked: Provider.of<TaskData>(context).taskList[index].isDone,
          onPressed: (value) {
            //setState(() {
            Provider.of<TaskData>(context).taskList[index].isDone = value;
            //});
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).taskList.length,
    );
  }
}
