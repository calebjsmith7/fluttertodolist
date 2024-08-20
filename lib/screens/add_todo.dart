import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';

class AddTodoScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter todo'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newTodo = _controller.text;
                if (newTodo.isNotEmpty) {
                  Provider.of<TodoProvider>(context, listen: false)
                      .addTodo(newTodo);
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
