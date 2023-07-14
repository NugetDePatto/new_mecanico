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
        padding: const EdgeInsets.all(20),
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
            ListTile(
              title: const Text('Tamaño de la fuente'),
              trailing: DropdownButton<double>(
                value: configC.tamanoFuente,
                items: const [
                  DropdownMenuItem(
                    value: 15,
                    child: Text('Chico'),
                  ),
                  DropdownMenuItem(
                    value: 20,
                    child: Text('Mediano'),
                  ),
                  DropdownMenuItem(
                    value: 25,
                    child: Text('Grande'),
                  ),
                ],
                onChanged: (double? value) {
                  setState(() {
                    if (value != null) {
                      configC.setTamanoFuente(value);
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
