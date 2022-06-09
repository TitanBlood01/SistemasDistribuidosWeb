import 'package:flutter/material.dart';
import 'package:news/models/usuario.dart';

class RegisterState with ChangeNotifier {
  bool _registrado = false;
  Usuario usuarioRegistrado;
  
  get registrado => this._registrado;

  set registrado(bool value) { 
    this._registrado = value;
    notifyListeners();
  }
  
  get getUsuarioRegistrado => this.usuarioRegistrado;
  set setUsuarioRegistrado(Usuario usuarioRegistrado) => this.usuarioRegistrado = usuarioRegistrado;
}