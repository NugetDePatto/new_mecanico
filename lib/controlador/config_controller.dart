import 'package:hive_flutter/adapters.dart';

import '../utils/apariencia_utils.dart';

class ConfigController {
  bool get isDark => isDarkMode();

  void setDark(bool value) {
    Hive.box('config').put('darkMode', value);
  }

  double get tamanoFuente => getTamanoFuente();

  void setTamanoFuente(double value) {
    Hive.box('config').put('tamanoFuente', value);
  }
}
