import 'package:flutter/material.dart';
import 'package:mobx_app/models/todoModel.dart';
import 'package:mobx_app/routes/app_routes.dart';
import 'package:mobx_app/states/todo.dart';

class TodoCard extends StatelessWidget {
  final TodoModel todoModel;
  final int index;

  TodoCard({this.todoModel, this.index});

  final Todo _todo = Todo.getInstance();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.red, width: 3.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(todoModel.name), Text(todoModel.status.toString())],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(todoModel.description),
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  _todo.deleteTodo(index);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
