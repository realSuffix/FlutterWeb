import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/todo_store.dart';
import 'package:my_app/beans/todo.dart';
import 'package:provider/provider.dart';

class AddPage extends StatefulWidget {
  final String title;

  AddPage({Key key, this.title}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String _title;
  String _content;

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoStore>(context);
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          title: Text("Add a new TODO"),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.fromLTRB(100, 30, 100, 30),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    onChanged: (text) {
                      this._title = text;
                    },
                    decoration: InputDecoration(
                        hintText: "Homework", labelText: "Title"),
                  ),
                  TextFormField(
                    onChanged: (text) {
                      this._content = text;
                    },
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: "Content goes here", labelText: "Content"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        final item = new Todo(_title, _content);
                        list.addTodo(item);
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.add),
                            Text("Save your todo")
                          ],
                        ),
                      ))
                ],
              ),
            )));
  }
}
