import 'package:e_kaksha_homepage/Constant.dart';
import 'package:flutter/material.dart';

class GetInFo extends StatelessWidget {
   GetInFo({super.key,required this.title,required this.titleInfo});
  final String title ;
  final String titleInfo;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(title,style: HomeInfo,),
            Container(
              height: 30,
              child: Text(titleInfo,style: HomeInfo,)),
          ],),
        );
  }
}