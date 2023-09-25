import 'package:flutter/material.dart';
import 'package:e_kaksha_homepage/Constant.dart';
class class_schedule extends StatelessWidget {
  class_schedule({super.key, required this.width});
 double width;
  @override
  Widget build(BuildContext context) {

    return class_subject_image_provider(imagePath: imagePath,subject:subjectName,width :width-50);
  }
}

class class_subject_image_provider extends StatelessWidget {

  
  const class_subject_image_provider({
    super.key,
    required this.imagePath,
    required this.subject
    ,required this.width
  });
  final List<String> subject;

  final List<String> imagePath;
final width;
  @override
  
  Widget build(BuildContext context) {
   return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 3, color: Colors.black),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(10),
          width: width/3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(ClassInfo[index]),
              Image.asset(imagePath[index]),
              Text(subjectName[index])
            ],
          ),

        ),itemCount: 3,) 

          
      
      )
    );
  }
}
