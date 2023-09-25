import 'package:e_demo/screens/user_login.dart';
import 'package:e_demo/utility/ThemeProvide.dart';
import 'package:e_demo/utility/basic_function.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class welcomeSplashScreen extends StatefulWidget {
  const welcomeSplashScreen({super.key});

  @override
  State<welcomeSplashScreen> createState() => _welcomeSplashScreenState();
}

class _welcomeSplashScreenState extends State<welcomeSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }

  void changeScreen() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return user_login();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('images/logo.png'),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "At Your Ease !",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Welcome To e-Kaksha",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(
            strokeWidth: 4,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  themeProvider theme = Provider.of(context, listen: false);
                  if (theme.currentTheme == theme.darkTheme) {
                    theme.setLightMode();
                    print("light");
                  } else if (theme.currentTheme == theme.lightTheme) {
                    theme.setDarkMode();
                    print("dark");
                  }
                });
              },
              child: Icon(Icons.light_mode))
        ],
      ),
    ));
  }
}
