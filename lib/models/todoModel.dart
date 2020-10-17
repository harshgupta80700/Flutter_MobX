import 'package:mobx/mobx.dart';

class TodoModel {
  String name;
  String description;
  bool status;

  TodoModel({
    this.name,
    this.status,
    this.description
  });
}
