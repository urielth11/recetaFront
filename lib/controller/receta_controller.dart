import 'package:recetaapp/models/receta.dart';
import 'package:recetaapp/repository/repository.dart';

class RecetaController {
  final Repository _repository;

  RecetaController(this._repository);

  Future<List<Receta>> fetchTodoList() async {
    return _repository.getTodoList();
  }

}