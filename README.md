# reactive_mobx_boilerplate

### app structure 
```
main.dart
api/
stores/
	|-todo_store.dart
	|-user_store.dart
actions/
	|-todo_action.dart
	|-user_action.dart
components/
screens/
dao/
models/
```

### generate mobx store using code gen builder
https://pub.dev/packages/mobx_codegen

`$ flutter packages pub run build_runner build`

### mobx store template
template model
```
// code gen needs this line
part 'todo_store.g.dart';

// This is the class used by rest of your codebase
class TodoStore extends _TodoStore with _$TodoStore{}

// The store-class
abstract class _TodoStore with Store {
  TodoStore(this.description);

  @observable
  String description = '';

  @observable
  bool done = false;
}
```

### actions streams in blocs
* note single or broadcast stream
* actions denote global updates to app state, not local tree


### add observers
* listens for app state changes