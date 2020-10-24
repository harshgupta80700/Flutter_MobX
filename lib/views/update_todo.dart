import 'package:flutter/material.dart';
import 'package:mobx_app/models/todoModel.dart';
import 'package:mobx_app/states/todo.dart';

class UpdateTodo extends StatefulWidget {
  @override
  _UpdateTodoState createState() => _UpdateTodoState();
}

class _UpdateTodoState extends State<UpdateTodo> {
  TodoModel todoModel;

  Todo _todo = Todo.getInstance();

  final nameTextEditingController = TextEditingController();
  final descriptionTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      todoModel = ModalRoute.of(context).settings.arguments;
      nameTextEditingController.text = todoModel.name;
      descriptionTextEditingController.text = todoModel.description;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UPDATE TODO"),
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
                TodoModel newTodoModel = TodoModel(
                    name: nameTextEditingController.text.toString(),
                    description:
                        descriptionTextEditingController.text.toString(),
                    status: true,
                id: todoModel.id);
                print(newTodoModel.name);
                print(newTodoModel.description);
                _todo.updateTodo(newTodoModel);
                print(_todo.todos.length);
                Navigator.pop(context);
              },
              child: Text("UPDATE"),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
