import 'package:flutter/material.dart';
import 'package:news/Provider/asignaciones_provider.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/asignaciones/components/asignacion_post.dart';
import 'package:news/screens/asignaciones/components/asignaciones.dart';
import 'package:news/screens/asignaciones/components/formularioAsignacionParq.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class AsignacionScreen extends StatelessWidget {
  const AsignacionScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final asignacion = Provider.of<asignacionesProvider>(context, listen: true).indice;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,//Division de la pantalla 
          child: (asignacion==0) ? AsigancionPostCard()
          : FormularioAsignacioParq(0, 0.009, 16, 0.04, 0.01, 0.04,
                          75, 0.01, 0.007, 0.01, 0.006)      
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Asignaciones(),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
      ],
    );
  }
}
