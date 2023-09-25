import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class themeProvider extends ChangeNotifier {
  var lightTheme = ThemeData.light(useMaterial3: true);
  var darkTheme = ThemeData.dark(useMaterial3: true);

  ThemeData currentTheme =
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.dark
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true);

  setLightMode() {
    currentTheme = lightTheme;
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = darkTheme;
    notifyListeners();
  }
}
