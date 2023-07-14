import 'package:flutter/material.dart';
import 'package:new_mecanico/controlador/main_controller.dart';
import 'package:new_mecanico/vista/bottom_bar_view.dart';

Future<void> main() async {
  await initMain();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: listenerConfig,
      builder: (context, config, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MechanX',
        theme: ThemeData(
          colorSchemeSeed: Colors.orangeAccent,
          brightness: brightness,
          useMaterial3: true,
        ),
        home: const BottomBarView(),
      ),
    );
  }
}
