import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';


// enum ThemeType { light, dark }

// class ThemeStore = _ThemeStore with _$ThemeStore;

// abstract class _ThemeStore with Store {
//   final ThemeData _lightTheme =
//       ThemeData.light().copyWith(primaryColor: Colors.deepPurple);
//   final ThemeData _darkTheme = ThemeData.dark().copyWith(
//     primaryColor: Colors.deepPurple,
//   );

//   @observable
//   ThemeType currentThemeType = ThemeType.light;

//   @computed
//   ThemeData get currentThemeData =>
//       (currentThemeType == ThemeType.light) ? _lightTheme : _darkTheme;

//   @computed
//   String get themeString =>
//       (currentThemeType == ThemeType.light) ? 'Light' : 'Dark';

//   @action
//   void changeCurrentTheme(ThemeType type) {
//     currentThemeType = type;
//   }
// }

import 'package:mobx_reactive_boilerplate/models/todo.dart';

// Include generated file
// part 'todos.g.dart';
part 'todo_store.g.dart';

enum TodoState{ todo, doing, done}

// concrete class with code generated _$Todo mixin
class TodoStore extends _TodoStore with _$TodoStore {
  TodoStore(String description) : super(description);
}

// The store-class with mobx Store mixin
abstract class _TodoStore with Store {
  _TodoStore(this.description);

  // https://mobx.netlify.app/api/observable
  @observable
  ObservableList<TodoModel> _todoList = ObservableList<TodoModel>();
  ObservableList<TodoModel> get getTodoList => _todoList;

  @observable
  String description = '';

  @observable
  bool isDone = false;

  @action
  void addTodo(TodoModel newTodo){
    _todoList.add(newTodo);
  }

}