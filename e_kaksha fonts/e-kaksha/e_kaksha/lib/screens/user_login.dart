import 'package:e_kaksha/utility/basic_function.dart';
import 'package:flutter/material.dart';

class user_login extends StatefulWidget {
  const user_login({super.key});

  @override
  State<user_login> createState() => _user_loginState();
}

class _user_loginState extends State<user_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    changeTheme(context);
                  });
                },
                child: Icon(Icons.light_mode)),
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'images/logo.png',
              width: 187.5,
              height: 125,
            ),
          ),
          Center(
            child: Text(
              "LOGIN",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
          ),
          Divider(),
          SizedBox(height: 30),
          getTextField(false, "Enter UserName"),
          SizedBox(
            height: 20,
          ),
          getTextField(true, "Enter Your Password"),
        ],
      ),
    );
  }
}
