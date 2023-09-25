import 'package:e_kaksha_homepage/Constant.dart';
import 'package:e_kaksha_homepage/utility/Home_Data.dart';
import 'package:e_kaksha_homepage/utility/user_info_change.dart/basic_change.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    final localdataProvider = Provider.of<GetAndSaveImage>(context);
    return Scaffold(
      
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: HomeInfoDecoration,
                child: Column(
                  children: [
                   
                    Text(
                      "Student Profile",
                      style: HomeStudentInfo,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ClipOval(
                     
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: GetImage( width: 200, Height: 200, GetImageProvider: localdataProvider.imageBytes,)),
                    ),
                
                  const  SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GetInFo(title: "Name ", titleInfo: localdataProvider.userName),
                   const SizedBox(
                      height: 20,
                    ),
                    GetInFo(title: "Roll No", titleInfo: "21xxxxxx06"),
                    SizedBox(
                      height: 20,
                    ),

                    GetInFo(title: "Email ", titleInfo: localdataProvider.email),
                    SizedBox(
                      height: 20,
                    ),
                    GetInFo(title: "Father Name ", titleInfo: "E-Father"),
                    SizedBox(
                      height: 20,
                    ),
                    GetInFo(title: "Course", titleInfo: "E-Course"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
