import 'package:flutter/material.dart';
import 'package:news/models/usuario.dart';

class UsuarioState with ChangeNotifier{
  List<Usuario> _usuario;
  get usuario => this._usuario;

  set usuario(value) { 
    this._usuario = value;
    notifyListeners();
  }

}