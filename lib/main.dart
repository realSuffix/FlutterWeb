import 'package:flutter/material.dart';
import 'package:my_app/pages/main_page.dart';
import 'package:my_app/todo_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<TodoStore>(
        create: (_) => TodoStore(),
        child: MaterialApp(
          title: 'Todo-App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MainPage(title: "All Todos"),
        ));
  }
}
