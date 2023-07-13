import 'package:flutter/material.dart';
import 'package:new_mecanico/controlador/config_controller.dart';

class ConfigView extends StatefulWidget {
  const ConfigView({super.key});

  @override
  State<ConfigView> createState() => _ConfigViewState();
}

class _ConfigViewState extends State<ConfigView> {
  ConfigController configC = ConfigController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracion'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Modo Oscuro'),
              value: configC.isDark,
              onChanged: (bool value) {
                setState(() {
                  configC.setDark(value);
                });
              },
            ),
            Text(
              'Tamaño de la fuente',
              style: TextStyle(fontSize: configC.tamanoFuente),
            ),
            Slider(
              value: configC.tamanoFuente,
              min: 10,
              max: 30,
              divisions: 4,
              label: configC.tamanoFuente.toString(),
              onChanged: (double value) {
                setState(() {
                  configC.setTamanoFuente(value);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
