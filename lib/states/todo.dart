import 'package:mobx/mobx.dart';
import 'package:mobx_app/models/todoModel.dart';

part 'todo.g.dart';

class Todo extends _Todo with _$Todo {
  static Todo _instance;
  static Todo getInstance() {
    if (_instance == null) {
      _instance = new Todo();
    }
    return _instance;
  }
}

abstract class _Todo with Store {
  @observable
  ObservableList todos = ObservableList<TodoModel>();

  @observable
  bool isLoading = false;

  @action
  void addTodo(TodoModel todoModel) {
    todos.add(todoModel);
    print(todoModel.name);
    print(todoModel.description);
    print(todoModel.status);
    print(todoModel.id);
  }

  @action
  void deleteTodo(TodoModel todoModel) {
    todos.removeWhere((todo) => todo.id == todoModel.id);
  }

  @action
  void updateTodo(TodoModel todoModel) {
    print(todoModel.name);
    print(todoModel.description);
    print(todoModel.status);
    print(todoModel.id);
    int index = todos.indexWhere((todo) => todo.id == todoModel.id);
    print("index = " + index.toString());
    todos.replaceRange(index, index + 1, [todoModel].toList());
  }
}
