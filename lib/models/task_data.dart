import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> taskList = [
    Task(name: 'Buy egg', isDone: false),
    Task(name: 'Buy Milk', isDone: false),
    Task(name: 'Buy Apple Juice', isDone: false),
    Task(name: 'Buy Mango Juice', isDone: false),
  ];



}
