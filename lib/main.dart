import 'package:flutter/material.dart';
import 'package:new_mecanico/controlador/main_controller.dart';
import 'package:new_mecanico/vista/bottom_bar_view.dart';

Future<void> main() async {
  await MainController().initMain();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MainController con = MainController();
    return ValueListenableBuilder(
      valueListenable: con.listener,
      builder: (context, config, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MechanX',
        theme: ThemeData(
          colorSchemeSeed: Colors.orangeAccent,
          brightness: con.brightness,
          useMaterial3: true,
        ),
        home: const BottomBarView(),
      ),
    );
  }
}
