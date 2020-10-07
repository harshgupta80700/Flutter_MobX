import 'package:mobx/mobx.dart';
import 'package:mobx_app/models/todoModel.dart';

part 'todo.g.dart';

class Todo = _Todo with _$Todo;

abstract class _Todo with Store{

  @observable
  List<TodoModel> todos = [];

  @observable
  bool isLoading = false;

  @action
  void addTodo(TodoModel todoModel){
    todos.add(todoModel);
  }

  @action
  void deleteTodo(String name){
    todos.removeWhere((todo) => todo.name == name);
  }

  @action
  void updateTodo(TodoModel todoModel){
    int index  = todos.indexWhere((todo) => todo.name == todoModel.name);
    todos.replaceRange(index, index+1,[todoModel]);
  }




}

