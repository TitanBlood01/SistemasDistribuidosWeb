import 'dart:js';

class EspacioParq{
  String id;
  var numero;
  var nombreOcupante;
  var cargo;
  var piso;
  var horaInicio;
  var horaFin;
  var estado;

  EspacioParq({this.id, this.numero, this.nombreOcupante, this.cargo, this.piso, this.horaInicio, this.horaFin, this.estado});

  factory EspacioParq.fromJson(Map<String, dynamic> json){
    return EspacioParq(
      id: json["_id"],
      numero: json["numero"],
      nombreOcupante: json["nombreOcupante"],
      cargo: json["cargo"],
      piso: json["piso"],
      horaInicio: json["horaInicio"],
      horaFin: json["horaFin"],
      estado: json["estado"]
    );
  }
}