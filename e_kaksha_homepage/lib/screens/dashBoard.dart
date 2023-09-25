import 'package:e_kaksha_homepage/utility/dashboard_Upcoming_events.dart';
import 'package:e_kaksha_homepage/utility/dashboard_classes.dart';
import 'package:e_kaksha_homepage/utility/dashboard_pending_assignments.dart';
import 'package:flutter/material.dart';

class DaskBoard extends StatefulWidget {
  const DaskBoard({super.key});

  @override
  State<DaskBoard> createState() => _DaskBoardState();
}

class _DaskBoardState extends State<DaskBoard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
              const  SizedBox(
                  height: 20,
                ),
                Text("Time Table",style: TextStyle(fontSize: 30,fontFamily: 'atzur'),),
               const SizedBox(height: 10,),
               

            
                class_schedule(width:MediaQuery.of(context).size.width),
                SizedBox(
                  height: 10,
                ),
                Text("Pending Assignmetns"),
                SizedBox(
                  height: 20,
                ),
                Pending_Upload(),
                Text("Upcoming Events"),
                SizedBox(height: 20,)
,                upcoming_events()
              ],
            ),
          ),
        )),
      ),
    );
  }
}
