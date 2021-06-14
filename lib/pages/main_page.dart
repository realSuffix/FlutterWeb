import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/todo_store.dart';
import 'package:my_app/pages/add_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  final String title;

  MainPage({Key key, this.title}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _onAddTodo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
          builder: (_) => ListView(
                children: list.todos,
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => this._onAddTodo(context),
        tooltip: 'Add Todo',
        child: Icon(Icons.add),
      ),
    );
  }
}
