import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class carrerasProvider with ChangeNotifier{
  int indice = 0;
  
  int get getIndice => this.indice;

  set setIndice(int indice) {
    this.indice = indice;
    notifyListeners();
  }
   
}