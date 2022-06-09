import 'package:flutter/material.dart';
import 'package:news/Provider/asignaciones_provider.dart';
import 'package:news/screens/home/components/sidebar_container.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Asignaciones extends StatelessWidget {
  const Asignaciones({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final asignacion = Provider.of<asignacionesProvider>(context, listen: false);
    return SidebarContainer(
      title: "Asignaciones",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Asignacion(
            title: 'Espacio Parqueo',
            //numOfItems: 18,
            press: () {
              asignacion.setIndice = 3;
            },
          ),
        ],
      ),
    );
  }
}

class Asignacion extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const Asignacion({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: press,
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
          ),
        ),
      ),
    );
  }
}