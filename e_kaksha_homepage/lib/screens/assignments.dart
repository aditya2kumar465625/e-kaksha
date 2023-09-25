import 'package:e_kaksha_homepage/utility/assignments_Data.dart';
import 'package:flutter/material.dart';


class Assignments extends StatefulWidget {
  const Assignments({super.key});

  @override
  State<Assignments> createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20,),
        Assignments_subject(name: "Java Programming",Image: Image.asset('images/java-icon.png'),),
           SizedBox(height: 20,),
        Assignments_subject(name: "Android Application Development",Image: Image.asset('images/icon-android.png'),),    
        
        SizedBox(height: 20,),
        Assignments_subject(name: "Software Engineering",Image: Image.asset('images/s_e.png'),),
           SizedBox(height: 20,),
        Assignments_subject(name: "Computer Hardware and Servicing",Image: Image.asset('images/c_h.png'),),       
      ],
    );
  }
}