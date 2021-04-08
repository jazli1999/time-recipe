import 'package:flutter/material.dart';

import 'package:time_recipe/styles.dart';
import 'package:time_recipe/components/task_detail_card.dart';
import 'package:time_recipe/models/task.dart';

class AddTaskTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddTaskTabState();
  }
}

class _AddTaskTabState extends State<AddTaskTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            title: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('New Task', style: Styles.headerFont)),
            backgroundColor: Color(0xffffffff),
            brightness: Brightness.light,
          ),
          preferredSize: Size.fromHeight(80),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton.extended(
            label: Text('Add'),
            icon: Icon(Icons.done),
            onPressed: () {},
            backgroundColor: Colors.green[500]),
        body: Column(children: [
          TaskDetailCard(
              categoryHeader: null,
              task: Task(dateTime: DateTime.now()),
              isNew: true,
              editMode: true)
        ]));
  }
}
