import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../modelo/cliente_model.dart';
import '../modelo/coche_model.dart';

Future<void> initHive() async {
  await Hive.initFlutter();

  Box config = await Hive.openBox('config');
  if (!config.containsKey('darkMode')) config.put('darkMode', false);

  if (!config.containsKey('tamanoFuente')) config.put('tamanoFuente', 16.0);

  Hive.registerAdapter(CocheAdapter());
  Hive.registerAdapter(ClienteAdapter());
  await Hive.openBox<Cliente>('clientes');
  prueba();
}

prueba() {
  Box<Cliente> clientes = Hive.box<Cliente>('clientes');

  if (clientes.isEmpty) {
    Cliente cliente1 = Cliente(
      nombre: 'Juan',
      telefono: '123456789',
      direccion: 'Calle 1',
      coches: [],
    );
    Cliente cliente2 = Cliente(
      nombre: 'Pedro',
      telefono: '987654321',
      direccion: 'Calle 2',
      coches: [],
    );
    Cliente cliente3 = Cliente(
      nombre: 'Luis',
      telefono: '123456789',
      direccion: 'Calle 3',
      coches: [],
    );

    clientes.put(cliente1.id, cliente1);
    clientes.put(cliente2.id, cliente2);
    clientes.put(cliente3.id, cliente3);
  }
}
