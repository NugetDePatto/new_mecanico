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
}
