// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Todo on _Todo, Store {
  final _$titleAtom = Atom(name: '_Todo.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$contentAtom = Atom(name: '_Todo.content');

  @override
  String get content {
    _$contentAtom.reportRead();
    return super.content;
  }

  @override
  set content(String value) {
    _$contentAtom.reportWrite(value, super.content, () {
      super.content = value;
    });
  }

  final _$_TodoActionController = ActionController(name: '_Todo');

  @override
  ListTile toListTile() {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.toListTile');
    try {
      return super.toListTile();
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
content: ${content}
    ''';
  }
}
