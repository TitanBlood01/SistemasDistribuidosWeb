import 'package:flutter/material.dart';
import 'package:news/Provider/UsuarioProvider.dart';
import 'package:news/Provider/asignaciones_provider.dart';
import 'package:news/Provider/carreras_provider.dart';
import 'package:news/Provider/login_web_state.dart';
import 'package:news/Provider/screen_provider.dart';
import 'package:news/screens/Login/login_page.dart';
import 'package:news/screens/home/home_screen.dart';
import 'package:news/screens/main/main_screen.dart';
import 'package:provider/provider.dart';

import 'Provider/Registro_state.dart';




void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginState()),
        ChangeNotifierProvider(create: (_) => RegisterState()),
        ChangeNotifierProvider(create: (_) => UsuarioState()),
        ChangeNotifierProvider(create: (_) => screenProvider()),
        ChangeNotifierProvider(create: (_) => carrerasProvider()),
        ChangeNotifierProvider(create: (_) => asignacionesProvider())
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final logeado = Provider.of<LoginState>(context, listen: true);
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'flutter web login ui',
    home: logeado.logeado ? MainScreen() : LoginPage(),

    );
  }
}