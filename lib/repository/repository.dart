import 'package:recetaapp/models/receta.dart';

// Fake server
abstract class Repository{
  Future<List<Receta>> getTodoList();
  Future<List<Receta>> patchCompleted(Receta todo);
  Future<List<Receta>> putCompleted(Receta todo);
  Future<List<Receta>> deleteCompleted(Receta todo);
  Future<List<Receta>> postCompleted(Receta todo);
}