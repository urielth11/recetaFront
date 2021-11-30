import '../models/usuario.dart';

class Receta {
  int? id;
  String? nombre;
  String? video;
  int? alcance;
  String? preparacion;
  int? activo;
  String? fechaRegistro;
  String? codigoVideo;
  Usuario? usuario;

  Receta(
      {this.id,
      this.nombre,
      this.video,
      this.alcance,
      this.preparacion,
      this.activo,
      this.fechaRegistro,
      this.codigoVideo,
      this.usuario});

  Receta.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    video = json['video'];
    alcance = json['alcance'];
    preparacion = json['preparacion'];
    activo = json['activo'];
    fechaRegistro = json['fechaRegistro'];
    codigoVideo = json['codigoVideo'];
    usuario =
        json['usuario'] != null ? new Usuario.fromJson(json['usuario']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['video'] = this.video;
    data['alcance'] = this.alcance;
    data['preparacion'] = this.preparacion;
    data['activo'] = this.activo;
    data['fechaRegistro'] = this.fechaRegistro;
    data['codigoVideo'] = this.codigoVideo;
    if (this.usuario != null) {
      data['usuario'] = this.usuario!.toJson();
    }
    return data;
  }
}