

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/Provider/screen_provider.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/screens/GestionParqueos/ListaParqueosScreen.dart';
import 'package:news/screens/asignaciones/asignacionScreen.dart';
import 'package:news/screens/home/home_screen.dart';
import 'package:news/screens/parqueo/parqueo_screen.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    final pantalla = Provider.of<screenProvider>(context, listen: true).indice;
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(
                child: (pantalla == 0) ? HomeScreen() : (pantalla ==1) ? ParqueoScreen() : (pantalla==2) ? AsignacionScreen() : ListaParqueosScreen(),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
