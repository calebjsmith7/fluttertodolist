import 'package:flutter/foundation.dart';

class TodoProvider with ChangeNotifier {
  List<String> _todos = [];

  List<String> get todos => _todos;

  void addTodo(String todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void removeTodoAt(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
