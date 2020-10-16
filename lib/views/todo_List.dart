import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx_app/states/todo.dart';
import 'package:mobx_app/views/todo_card.dart';

Todo todo = Todo();

class TodoList extends StatelessWidget {

  final Todo _todo = Todo.getInstance();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _todo.todos.length,
        itemBuilder: (_, index) {
          return TodoCard(
            name: _todo.todos[index].name,
            description:_todo.todos[index].description,
            status: _todo.todos[index].status,
          );
        });
  }
}
