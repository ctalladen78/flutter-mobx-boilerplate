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

### actions streams in blocs
* note single or broadcast stream
* actions denote global updates to app state, not local tree


### add observers
* listens for app state changes