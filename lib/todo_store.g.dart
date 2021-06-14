// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on _TodoStore, Store {
  Computed<ObservableList<ListTile>> _$todosComputed;

  @override
  ObservableList<ListTile> get todos =>
      (_$todosComputed ??= Computed<ObservableList<ListTile>>(() => super.todos,
              name: '_TodoStore.todos'))
          .value;

  final _$_todosAtom = Atom(name: '_TodoStore._todos');

  @override
  ObservableList<Todo> get _todos {
    _$_todosAtom.reportRead();
    return super._todos;
  }

  @override
  set _todos(ObservableList<Todo> value) {
    _$_todosAtom.reportWrite(value, super._todos, () {
      super._todos = value;
    });
  }

  final _$counterAtom = Atom(name: '_TodoStore.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$_TodoStoreActionController = ActionController(name: '_TodoStore');

  @override
  void addTodo(Todo todo) {
    final _$actionInfo =
        _$_TodoStoreActionController.startAction(name: '_TodoStore.addTodo');
    try {
      return super.addTodo(todo);
    } finally {
      _$_TodoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
todos: ${todos}
    ''';
  }
}
