/*import 'dart:convert';

import 'package:recetaapp/repository/repository.dart';
import 'package:recetaapp/models/Todo.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository{
  String dataURL = 'https://jsonplaceholder.typicode.com';

  @override
  Future<List<Todo>> deleteCompleted(Todo todo) {
    // TODO: implement deleteCompleted
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];
    var url = Uri.parse('$dataURL/todos');
    var response = await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    //parse
    for (var i = 0; i < body.length; i++ ){
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  @override
  Future<List<Todo>> patchCompleted(Todo todo) {
    // TODO: implement patchCompleted
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> postCompleted(Todo todo) {
    // TODO: implement postCompleted
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> putCompleted(Todo todo) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }
}*/