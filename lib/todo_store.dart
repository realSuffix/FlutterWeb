import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_app/beans/todo.dart';

// Include generated file
part 'todo_store.g.dart';

// This is the class used by rest of your codebase
class TodoStore = _TodoStore with _$TodoStore;

// The store-class
abstract class _TodoStore with Store {
  @observable
  ObservableList<Todo> _todos = new ObservableList<Todo>();

  @observable
  int counter = 0;

  _TodoStore() {
    this._todos.add(new Todo("asdfasdf", "content"));
  }

  @computed
  ObservableList<ListTile> get todos {
    return ObservableList.of(this._todos.map((e) => e.toListTile()).toList());
  }

  @action
  void addTodo(Todo todo) {
    this._todos.add(todo);
  }
}
