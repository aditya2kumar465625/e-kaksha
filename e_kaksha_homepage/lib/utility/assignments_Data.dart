import 'package:e_kaksha_homepage/screens/assignmets_info.dart';
import 'package:flutter/material.dart';
import 'package:e_kaksha_homepage/Constant.dart';
class Assignments_subject extends StatelessWidget {
  const Assignments_subject({super.key,required this.name,required this.Image});
final Image ;
final name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Assignments_Info(text: name,)),);
      },
          child: ListTile(
          trailing: Icon(Icons.arrow_drop_down),
              title: Text(name!,style: AssignmentsSubjectStyle,),
          leading: Image!,
          ),
        );
  }
}