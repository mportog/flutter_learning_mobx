// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStoreBase, Store {
  Computed<bool> _$isTodoValidComputed;

  @override
  bool get isTodoValid =>
      (_$isTodoValidComputed ??= Computed<bool>(() => super.isTodoValid)).value;

  final _$newTodoTtileAtom = Atom(name: '_ListStoreBase.newTodoTtile');

  @override
  String get newTodoTtile {
    _$newTodoTtileAtom.context.enforceReadPolicy(_$newTodoTtileAtom);
    _$newTodoTtileAtom.reportObserved();
    return super.newTodoTtile;
  }

  @override
  set newTodoTtile(String value) {
    _$newTodoTtileAtom.context.conditionallyRunInAction(() {
      super.newTodoTtile = value;
      _$newTodoTtileAtom.reportChanged();
    }, _$newTodoTtileAtom, name: '${_$newTodoTtileAtom.name}_set');
  }

  final _$todoListAtom = Atom(name: '_ListStoreBase.todoList');

  @override
  ObservableList<TodoStore> get todoList {
    _$todoListAtom.context.enforceReadPolicy(_$todoListAtom);
    _$todoListAtom.reportObserved();
    return super.todoList;
  }

  @override
  set todoList(ObservableList<TodoStore> value) {
    _$todoListAtom.context.conditionallyRunInAction(() {
      super.todoList = value;
      _$todoListAtom.reportChanged();
    }, _$todoListAtom, name: '${_$todoListAtom.name}_set');
  }

  final _$_ListStoreBaseActionController =
      ActionController(name: '_ListStoreBase');

  @override
  void setNewTodoTitle(String value) {
    final _$actionInfo = _$_ListStoreBaseActionController.startAction();
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$_ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$_ListStoreBaseActionController.startAction();
    try {
      return super.addTodo();
    } finally {
      _$_ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'newTodoTtile: ${newTodoTtile.toString()},todoList: ${todoList.toString()},isTodoValid: ${isTodoValid.toString()}';
    return '{$string}';
  }
}
