import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mensajeRepuesta(BuildContext context, String casillero) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Asignacion de Casillero de la Carrera de Arquitectura',
          style: TextStyle(color: Colors.white)),
      content: Text(
          'Se le acaba de asignar el casillero' + casillero + ', dirijase a su direccion de carrera para obtener mas informacion',
          style: TextStyle(color: Colors.white)),
      actions: [
        FlatButton(
          child: Text('Esta Bien!', style: TextStyle(color: Colors.black)),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
      backgroundColor: Colors.red,
    ),
  );
}
