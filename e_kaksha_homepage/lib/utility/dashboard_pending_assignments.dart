import 'package:flutter/material.dart';
import 'package:e_kaksha_homepage/Constant.dart';
class Pending_Upload extends StatefulWidget {
  const Pending_Upload({super.key});

  @override
  State<Pending_Upload> createState() => _Pending_UploadState();
}

class _Pending_UploadState extends State<Pending_Upload> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(itemBuilder:
      (context, index) => Container(

        child: Column(
          children: [
         ListTile(
              title: Text(subjectName[index]),
              subtitle: Text("Assignment $index"),
          trailing: Container(
            width: 170,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: null, child: Icon(Icons.add)),
                SizedBox(width: 10,),
                ElevatedButton(child: Text("Upload"),onPressed: null,),
              ],
            ),
          ),
         ),
            SizedBox(height: 20,)
          ],
        ),
      ),itemCount: subjectName.length,),
      
    );
  }
}