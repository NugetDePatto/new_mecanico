import 'package:flutter/material.dart';
import 'package:new_mecanico/vista/Clientes/clientes_view.dart';

class BottomBarController {
  int index = 0;

  List<String> nombres = [
    'Inicio',
    'Taller',
    'Clientes',
    'Calendario',
    'Reportes',
  ];

  List<Widget> vistas = [
    const Scaffold(),
    const Scaffold(),
    const ClientesView(),
    const Scaffold(),
    const Scaffold(),
  ];

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
