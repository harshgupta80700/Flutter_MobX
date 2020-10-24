import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/routes/app_routes.dart';
import 'package:mobx_app/states/todo.dart';
import 'package:mobx_app/views/todo_card.dart';

class TodoList extends StatelessWidget {
  final Todo _todo = Todo.getInstance();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (_todo.todos.isEmpty) {
        return Center(
          child: Text("TODO List is Empty"),
        );
      }

      return ListView.builder(
          itemCount: _todo.todos.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.UPDATE_TODO,
                    arguments: _todo.todos[index]);
              },
              child: TodoCard(todoModel: _todo.todos[index], index: index),
            );
          });
    });
  }
}
