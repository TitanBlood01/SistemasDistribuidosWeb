import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:news/Provider/asignaciones_provider.dart';
import 'package:news/Provider/carreras_provider.dart';
import 'package:news/Provider/screen_provider.dart';
import 'package:provider/provider.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 

  int get selectedIndex => _selectedIndex.value;


  List<String> get menuItems =>
      ["Inicio","Info Parqueos", "Asignaciones", "Gesion de Parqueos"];


  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;


  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    } else {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void setMenuIndex(int index, BuildContext context) {
    final pantalla = Provider.of<screenProvider>(context, listen: false);
    //final carrera = Provider.of<carrerasProvider>(context, listen: false);
    final asignacion = Provider.of<asignacionesProvider>(context, listen: false);
    _selectedIndex.value = index;
     pantalla.setIndice = index;
    if(index==2){
      /*carrera.setIndice= 0;
    } else{
      if(index == 3){*/
        asignacion.setIndice=0;
      //}
    }
   
    
  }
}
