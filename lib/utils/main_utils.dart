import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:new_mecanico/utils/hive_utils.dart';

var listenerConfig = Hive.box('config').listenable();

initMain() async {
  await initHive();
}

bool isDarkMode() {
  return Hive.box('config').get('darkMode');
}

Brightness get brightness => isDarkMode() ? Brightness.dark : Brightness.light;

double get fontSize => Hive.box('config').get('tamanoFuente');
