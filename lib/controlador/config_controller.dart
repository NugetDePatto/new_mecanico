import 'package:hive_flutter/adapters.dart';

import '../utils/main_utils.dart';

class ConfigController {
  bool get isDark => isDarkMode();

  void setDark(bool value) {
    Hive.box('config').put('darkMode', value);
  }

  double get tamanoFuente => fontSize;

  void setTamanoFuente(double value) {
    Hive.box('config').put('tamanoFuente', value);
  }
}
