import 'package:flutter/material.dart';
import 'package:mobx_app/views/add_todo.dart';
import 'package:mobx_app/views/landing.dart';
import 'package:mobx_app/views/update_todo.dart';

abstract class AppRoutes {
  static String LANDING_PAGE = "/landing";
  static String ADD_TODO = "/addtodo";
  static String UPDATE_TODO = "/updatetodo";
}

Map<String, WidgetBuilder> routes = {
  AppRoutes.LANDING_PAGE: (context) => Landing(),
  AppRoutes.ADD_TODO: (context) => AddTodo(),
  AppRoutes.UPDATE_TODO: (context) => UpdateTodo()
};
