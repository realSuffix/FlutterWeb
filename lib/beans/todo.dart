import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'todo.g.dart';

class Todo = _Todo with _$Todo;

abstract class _Todo with Store {
  @observable
  String title;
  @observable
  String content;

  _Todo(this.title, this.content);

  @action
  ListTile toListTile() => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(this.content),
      );
}
