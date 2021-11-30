import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../repository/receta_repository.dart';

import '../controller/receta_controller.dart';
import '../models/receta.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var recetaController = RecetaController(RecetaRepository());

    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: recetaController.fetchTodoList(),
          builder: (context, snapshot) {
            //
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('error'),
              );
            }
            final todoData = snapshot.data as List<Receta>;

            return ListView(
              children: [
                Text("ENTRADAS"),
                Padding(
                  padding: EdgeInsets.all(1),
                ),
                SizedBox(
                  height: 15,
                ),
                CarouselSlider(
                  items: crearItems(todoData),
                  options: CarouselOptions(
                    height: 190.0,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 3),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            );
          }),
    );
  }

  /*var recetaController = RecetaController(RecetaRepository());
  Future<List<Receta>> recetas = recetaController.fetchTodoList();*/

  List<Container> crearItems(List<Receta> todoData) {
    final lista = <Container>[];
    for (Receta obj in todoData) {
      final tempWidget = Container(
        width: 1000,
        child: Text(
          obj.nombre!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(2.0, 2.0),
              blurRadius: 3.0,
              spreadRadius: 2.0,
            ),
          ],
          image: DecorationImage(
            image: NetworkImage(
                'http://img.youtube.com/vi/${obj.codigoVideo}/0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
      lista.add(tempWidget);
    }
    return lista;
  }
}
