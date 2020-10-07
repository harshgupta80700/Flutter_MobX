// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Todo on _Todo, Store {
  final _$todosAtom = Atom(name: '_Todo.todos');

  @override
  List<TodoModel> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<TodoModel> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_Todo.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_TodoActionController = ActionController(name: '_Todo');

  @override
  void addTodo(TodoModel todoModel) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.addTodo');
    try {
      return super.addTodo(todoModel);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteTodo(String name) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.deleteTodo');
    try {
      return super.deleteTodo(name);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTodo(TodoModel todoModel) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.updateTodo');
    try {
      return super.updateTodo(todoModel);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
isLoading: ${isLoading}
    ''';
  }
}
