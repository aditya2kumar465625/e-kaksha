import 'package:e_kaksha_homepage/utility/theme_manager.dart';
import 'package:e_kaksha_homepage/utility/user_info_change.dart/basic_change.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'FrontToolBar/homePage.dart';
import 'package:hive/hive.dart';
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); 
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<themedata>(
          create: (_) => themedata(),
        ),
        ChangeNotifierProvider<GetAndSaveImage>(create: (_) => GetAndSaveImage()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<themedata>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.theme,
      home: HomePage(),
    );
  }
}