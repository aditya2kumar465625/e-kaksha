import 'package:e_kaksha_homepage/Constant.dart';
import 'package:flutter/material.dart';

class Assignments_Info extends StatefulWidget {
  Assignments_Info({super.key, required this.text});
  final text;
  int count = 0;

  @override
  State<Assignments_Info> createState() => _Assignments_InfoState();
}

class _Assignments_InfoState extends State<Assignments_Info> {
  bool visible = false;
  bool pending_visible = false;
  bool new_visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.text!} Ass.'),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () {
                setState(() {
                  visible = !visible;
                  pending_visible = pending_visible == false?pending_visible:!pending_visible;
                  new_visible = new_visible == false?new_visible:!new_visible;
                });
              },
              leading: Text(
                "All Assignments",
                style: Assignments_Info_style,
              ),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            Visibility(
              visible: visible,
              child: SizedBox(
                height: 300,
                child: ListView(
                    children: List.generate(10, (index) {
                  return getListOfItem("Assignments ${index}","Issued Date");
                })),
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  pending_visible = !pending_visible;
                  
                 visible = visible == false?visible:!visible;
                  new_visible = new_visible == false?new_visible:!new_visible;
                });
              },
              leading: Text(
                "Pending Assignments",
                style: Assignments_Info_style,
              ),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            Visibility(
              visible: pending_visible,
              child: SizedBox(
                height: 300,
                child: ListView(
                    children: List.generate(10, (index) {
                  return getListOfItem("Assignments ${index}","Submission Date");
                })),
              ),
            ),
             ListTile(
            onTap: (){
              setState(() {
              
                  
                 visible = visible == false?visible:!visible;
                  pending_visible = pending_visible == false?pending_visible:!pending_visible;
                  new_visible = !new_visible;
                
              });
            },
            leading: Text("New Assignments",style: Assignments_Info_style,),
            trailing: Icon(Icons.arrow_drop_down),
          ),


          Visibility(
            visible: new_visible,
            child: SizedBox(
              height: 300,
              child: ListView(
                children: List.generate(10, (index) {
                  return getListOfItem("Assignments ${index}","Submission Date");
                })
              ),
            ),
          ),
          ],
        ));
  }
}

class getListOfItem extends StatelessWidget {
  final String Assignments_number;
  final String subtitle;
  getListOfItem(this.Assignments_number,this.subtitle);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Assignments_number,
        style: AssignmentsSubjectStyle,
      ),
      subtitle: Text("$subtitle :- "),
    );
  }
}
