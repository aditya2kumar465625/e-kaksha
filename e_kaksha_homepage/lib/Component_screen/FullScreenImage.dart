import 'package:e_kaksha_homepage/utility/user_info_change.dart/basic_change.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class fullScreenImage extends StatelessWidget {
   fullScreenImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Profile Picture"),
      ),
      body: Card(
        elevation: 4,
        child: Center(child: Image.memory(Provider.of<GetAndSaveImage>(context).imageBytes!,)),
      ),
    );
  }
}