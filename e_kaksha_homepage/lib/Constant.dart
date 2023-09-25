import 'package:e_kaksha_homepage/screens/assignments.dart';
import 'package:e_kaksha_homepage/screens/dashBoard.dart';
import 'package:e_kaksha_homepage/screens/home.dart';
import 'package:e_kaksha_homepage/screens/otherScreen/edit_profiler.dart';
import 'package:flutter/material.dart';


//Drawer code
List<Widget> getWidget = [
  DaskBoard(),
  Home(),
  Assignments(),
  profile_edit()
];
List<String> barName=[
  'DashBoard',
  'Home',
  'Assignments',
  'Profile Edit'
];

const HomeInfo =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w400, fontFamily: 'atzur');
const HomeStudentInfo = TextStyle(
    fontSize: 30, fontWeight: FontWeight.w800, fontFamily: 'pacifico');
BoxDecoration HomeInfoDecoration = BoxDecoration(border: Border.all(width: 4));

//Assignments .dart

bool java_list_visible = false;

const AssignmentsSubjectStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.w600);

//Assignmets data .dart
const Assignments_Info_style =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w800);

//dashboard data
List<String> imagePath = [
  'images/c_h.png',
  'images/icon-android.png',
  'images/java-icon.png',
  'images/s_e.png',
  'images/computer_lab.png'
];
List<String> subjectName = [
  'Computer Hardware',
  'Android Development',
  'Java Programming',
  'Software Engineering',
  'Lab Time'
];

List<String> ClassInfo = ['Last Class', 'Current Class', 'Next Class'];

List<String> upcoming_events_Data_Head = [
  'Class Test ',
  'Class Test ',
  'Group Discussion',
  'Presentation'
];
List<String> upcoming_events_Data_tail = [
  '20 Oct 2023',
  '24 Oct 2023',
  '29 Oct 2023',
  '02 Nov 2023',
];

const upcoming_events_head_style = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
//not used
const upcoming_events_tail_style = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w200,
);


//user Image Change 
class GetImage extends StatelessWidget {
  const GetImage({
    super.key,
 this.GetImageProvider,
    
 required this.width,
 required this.Height
  });

 final double Height;
 final double width;

  final String imagesystem = 'images/user.png';
    final GetImageProvider ;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: Height,
      width: width,
      child: CircleAvatar(
      backgroundColor: Colors.transparent,
      child: ClipOval(
      
        child: SizedBox(
          height: 200,
          width: 200,
          child:GetImageProvider==null?Image.asset(imagesystem
            ,):Image.memory(GetImageProvider!,fit: BoxFit.cover,),
        ),
      )),
    );
  }
}