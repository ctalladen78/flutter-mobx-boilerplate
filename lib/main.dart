import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_reactive_boilerplate/home.dart';
import 'package:mobx_reactive_boilerplate/stores/todo_store.dart';
import 'package:mobx_reactive_boilerplate/stores/user_store.dart';

void main() {
    // register providers
  runApp(MultiProvider(providers: [
      Provider<TodoStore>(create: (_) => TodoStore("my todo list")),
      // Provider<UserStore>(create: (_) => UserStore())
    ], child: MyApp()));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      // final todoStore = context.read<TodoStore>();
      // todoStore.actions.addTodo(Todo)
      // context.watch<ThemeStore>()
      return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  });
  }
}

