import 'package:e_kaksha/screens/WelcomeSplash.dart';
import 'package:e_kaksha/utility/ThemeProvide.dart';
import 'package:flutter/material.dart';
import 'package:e_kaksha/utility/basic_function.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => themeProvider(),
        child:
            Consumer<themeProvider>(builder: (context, themeProvider, child) {
          return MaterialApp(
              theme: themeProvider.currentTheme, home: welcomeSplashScreen());
        }));
  }
}
