import 'dart:convert';

import 'package:recetaapp/models/receta.dart';
import 'package:http/http.dart' as http;
import 'package:recetaapp/repository/repository.dart';

class RecetaRepository extends Repository {
  String dataURL = 'http://10.0.2.2:8090/rest/receta';

  @override
  Future<List<Receta>> deleteCompleted(Receta todo) {
    // TODO: implement deleteCompleted
    throw UnimplementedError();
  }

  @override
  Future<List<Receta>> getTodoList() async {
    List<Receta> todoList = [];
    var url = Uri.parse(dataURL);
    var response = await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    //parse
    for (var i = 0; i < body.length; i++ ){
      todoList.add(Receta.fromJson(body[i]));
    }

    return todoList;
  }

  @override
  Future<List<Receta>> patchCompleted(Receta todo) {
    // TODO: implement patchCompleted
    throw UnimplementedError();
  }

  @override
  Future<List<Receta>> postCompleted(Receta todo) {
    // TODO: implement postCompleted
    throw UnimplementedError();
  }

  @override
  Future<List<Receta>> putCompleted(Receta todo) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }
}