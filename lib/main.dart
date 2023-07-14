import 'package:flutter/material.dart';
import 'package:new_mecanico/utils/main_utils.dart';
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
          colorSchemeSeed: Colors.blue,
          brightness: brightness,
          useMaterial3: true,
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              fontSize: fontSize,
            ),
            bodyMedium: TextStyle(
              fontSize: fontSize,
            ),
            bodySmall: TextStyle(
              fontSize: fontSize * 0.8,
            ),
            titleLarge: TextStyle(
              fontSize: fontSize + 3,
            ),
          ),
        ),
        home: const BottomBarView(),
      ),
    );
  }
}
