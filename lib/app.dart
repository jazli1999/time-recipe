import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:time_recipe/login_page.dart';
import 'package:time_recipe/tabs/tasks_tab.dart';
import 'package:time_recipe/tabs/statistics_tab.dart';

class TimeRecipe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TimeRecipeState();
  }
}

class _TimeRecipeState extends State<TimeRecipe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/tasks': (context) => TasksTab(),
      '/statistics': (context) => StatisticsTab(),
    }, home: LoginPage());
  }
}
