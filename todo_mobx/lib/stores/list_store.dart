import 'package:mobx/mobx.dart';
import 'package:todomobx/stores/todo_store.dart';
part 'list_store.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  @observable
  String newTodoTtile = '';

  @observable
  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();

  @action
  void setNewTodoTitle(String value) => newTodoTtile = value;

  @action
  void addTodo() {
    todoList.insert(0, TodoStore(newTodoTtile));
    newTodoTtile = '';
  }

  @computed
  bool get isTodoValid => (newTodoTtile.isNotEmpty && newTodoTtile.length > 3);
}
