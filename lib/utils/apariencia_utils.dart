import 'package:hive_flutter/adapters.dart';

bool isDarkMode() {
  return Hive.box('config').get('darkMode');
}

double getTamanoFuente() {
  return Hive.box('config').get('tamanoFuente');
}
