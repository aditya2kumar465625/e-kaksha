
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class themedata extends ChangeNotifier{

  Future<void> setThemePrefrence(bool isDark) async{
    final themebox = await Hive.openBox('ThemeData');
    themebox.put('isDark', isDark);
    print(themebox.get('isDark'));
    
  }
Future<bool> getThemePrefrence() async{
  await Hive.initFlutter();
  final themeBox = await Hive.openBox('ThemeData');
return themeBox.get('isDark',defaultValue: false);

}
    themedata(){
      getThemePrefrence().then((value) {
          theme = value?darkTheme:lightTheme;
          print(value);
          print(theme);
          notifyListeners();
      });
    }
  var lightTheme = ThemeData.light(useMaterial3: true);
  
  var darkTheme = ThemeData.dark(useMaterial3: true);
  ThemeData theme = ThemeData.light(useMaterial3: true);

  void changetTheme (){


  theme = theme == lightTheme?darkTheme:lightTheme;
  
setThemePrefrence(theme ==darkTheme);

  notifyListeners();
  }
}