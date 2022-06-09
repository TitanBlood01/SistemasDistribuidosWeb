import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news/models/espacioParq_model.dart';



Future<List<EspacioParq>> listCasilleroEspParq() async{
  final response =
   await http.get(Uri.parse('http://192.168.0.20:3000/api/espaciosParq'));
  
  return compute(decodeJson, response.body);
}

List<EspacioParq> decodeJson(String responseBody){
  final myJson = json.decode(responseBody);

  return myJson['parqueos']
  .map<EspacioParq>((json) => EspacioParq.fromJson(json))
  .toList();
}

mapEspacioParq(EspacioParq espacioParq, bool mapId){
  Map data;

  if(!mapId){
    data = {
      'numero': '${espacioParq.numero}',
      'nombreOcupante': '${espacioParq.nombreOcupante}',
      'cargo': '${espacioParq.cargo}',
      'piso': '${espacioParq.piso}',
      'horaInicio': '${espacioParq.horaInicio}',
      'horaFin': '${espacioParq.horaFin}',
      'estado': '${espacioParq.estado}'
    };
  } else{
    data = {
      '_id': '${espacioParq.id}',
      'numero': '${espacioParq.numero}',
      'nombreOcupante': '${espacioParq.nombreOcupante}',
      'cargo': '${espacioParq.cargo}',
      'piso': '${espacioParq.piso}',
      'horaInicio': '${espacioParq.horaInicio}',
      'horaFin': '${espacioParq.horaFin}',
      'estado': '${espacioParq.estado}'
    };
  }

  return data;
}


Future<EspacioParq> buscarEspParq(String numparq) async{
  var url = Uri.parse('http://192.168.0.20:3000/api/espacioParq/$numparq');

  final response = await http.get(url);

  return EspacioParq.fromJson(jsonDecode(response.body)['parqueos']);
  
}

Future<EspacioParq> modifyEspacioParque(EspacioParq espacioParq) async{
  var url = Uri.parse('http://192.168.0.20:3000/api/espacioParq/modificar');
  var _body = json.encode(mapEspacioParq(espacioParq, true));

  var response = await http.put(url, 
  headers: {'Content-Type': 'application/json; charset=utf-8'},
  body: _body);

  if (response.statusCode == 200) {
    return EspacioParq.fromJson(jsonDecode(response.body)['parqueos']);
  }else{
    throw Exception('Error al intentar modificar el espacio de Parqueo...!');
  }
}


