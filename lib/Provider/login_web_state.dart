import 'package:flutter/material.dart';
import 'package:news/models/usuario.dart';

class LoginState with ChangeNotifier {
  bool _logeado = false;
  Usuario usuarioActual;
  
  get logeado => this._logeado;

  set logeado(bool value) { 
    this._logeado = value;
    notifyListeners();
  }
  
  get getUsuarioActual => this.usuarioActual;
  set setUsuarioActual(Usuario usuarioActual) => this.usuarioActual = usuarioActual;
}