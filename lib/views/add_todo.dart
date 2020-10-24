import 'package:flutter/material.dart';
import 'package:mobx_app/models/todoModel.dart';
import 'package:mobx_app/states/todo.dart';
import 'package:uuid/uuid.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  Todo _todo = Todo.getInstance();

  var uuid = new Uuid();

  final nameTextEditingController = TextEditingController();
  final descriptionTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD TODO"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameTextEditingController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: descriptionTextEditingController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {
                TodoModel todoModel = TodoModel(
                    name: nameTextEditingController.text.toString(),
                    description:
                        descriptionTextEditingController.text.toString(),
                    status: false,
                  id: uuid.v1()
                );
                _todo.addTodo(todoModel);
                print(_todo.todos.length);
                Navigator.pop(context);
              },
              child: Text("ADD"),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
