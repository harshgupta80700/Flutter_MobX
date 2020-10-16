import 'package:flutter/material.dart';
import 'package:mobx_app/views/add_todo.dart';
import 'package:mobx_app/views/landing.dart';

abstract class AppRoutes {
  static String LANDING_PAGE = "/landing";
  static String ADD_TODO = "/addtodo";
}

Map<String, WidgetBuilder> routes = {
  AppRoutes.LANDING_PAGE: (context) => Landing(),
  AppRoutes.ADD_TODO: (context) => AddTodo(),
};
