class Usuario {
  int? id;
  String? login;
  String? nombres;
  String? apellidos;
  String? correo;

  Usuario(
      {this.id,
      this.login,
      this.nombres,
      this.apellidos,
      this.correo});

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    login = json['login'];
    nombres = json['nombres'];
    apellidos = json['apellidos'];
    correo = json['correo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['login'] = this.login;
    data['nombres'] = this.nombres;
    data['apellidos'] = this.apellidos;
    data['correo'] = this.correo;
    return data;
  }
}