import 'package:flutter/material.dart';
import 'ThemeProvide.dart';
import 'package:provider/provider.dart';

//Change Theme
void changeTheme(context) {
  themeProvider theme = Provider.of(context, listen: false);
  if (theme.currentTheme == theme.darkTheme) {
    theme.setLightMode();
    print("light");
  } else if (theme.currentTheme == theme.lightTheme) {
    theme.setDarkMode();
    print("dark");
  }
}

//user_login_text_field

Widget getTextField(passwd, text) {
  return TextField(
    obscureText: passwd,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: text,
      helperText: text,
    ),
  );
}
