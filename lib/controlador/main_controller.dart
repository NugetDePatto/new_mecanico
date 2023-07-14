import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:new_mecanico/utils/hive_utils.dart';
import '../utils/apariencia_utils.dart';

var listenerConfig = Hive.box('config').listenable();

initMain() async {
  await initHive();
}

Brightness get brightness => isDarkMode() ? Brightness.dark : Brightness.light;
