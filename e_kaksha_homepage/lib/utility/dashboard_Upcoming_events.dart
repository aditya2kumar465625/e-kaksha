import 'package:e_kaksha_homepage/Constant.dart';
import 'package:flutter/material.dart';

class upcoming_events extends StatelessWidget {
  const upcoming_events({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 200,
    child: ListView.builder(itemBuilder: (context, index) => Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  upcoming_events_Data_Head[index], style: upcoming_events_head_style,         )
              ,
              Text(upcoming_events_Data_tail[index])
              ],
              
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    ),itemCount: upcoming_events_Data_Head.length,),);
  }
}