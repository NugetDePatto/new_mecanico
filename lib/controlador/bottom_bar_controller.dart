import 'package:flutter/material.dart';
import 'package:new_mecanico/vista/Clientes/clientes_view.dart';

class BottomBarController {
  int index = 0;

  StatefulWidget vista() {
    switch (index) {
      case 0:
        return const Scaffold();
      case 1:
        return const Scaffold();
      case 2:
        return ClientesView(key: UniqueKey());
      case 3:
        return const Scaffold();
      case 4:
        return const Scaffold();
      default:
        return const Scaffold();
    }
  }

  List<String> get titulos => [
        'Inicio',
        'Taller',
        'Clientes',
        'Calendario',
        'Reportes',
      ];

  List<IconData> get iconos => [
        Icons.home,
        Icons.car_repair,
        Icons.people,
        Icons.calendar_today,
        Icons.analytics,
      ];

  Color sePresiono(bool press, BuildContext context) {
    if (press) {
      return Colors.white;
    } else {
      return Theme.of(context).buttonTheme.colorScheme!.primaryContainer;
    }
  }
}
