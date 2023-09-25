import 'package:e_kaksha_homepage/Constant.dart';
import 'package:e_kaksha_homepage/utility/theme_manager.dart';
import 'package:e_kaksha_homepage/utility/user_info_change.dart/basic_change.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 static int index = 0;
 void change(num ){
  setState(() {
    index = num;
  });
 }




  
  @override
  Widget build(BuildContext context) {
   final GetLocalData = Provider.of<GetAndSaveImage>(context); 
    return Scaffold(
        drawer: Drawer(
          
          child: ListView(
            children: [
                SizedBox(height: 60,),
                Column(
                  
                  children: [
                   const  Text("Welcome to E-Kaksha",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                    Divider(),
                    ClipOval(
                     
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: GetImage( width: 200, Height: 200, GetImageProvider: GetLocalData.imageBytes,)),
                    ),
                
                   const SizedBox(height: 20,),
                   Text("Hi :) ${GetLocalData.userName}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                  ],
                ),
              const  SizedBox(height: 30,),

              DrawerList(
                icon: Icons.dashboard,
                text: "DashBoard",
                onTap: () {
                  change(0);
                  Navigator.pop(context);
                },
              ),
              DrawerList(
                icon: Icons.home,
                text: "Home",
                onTap: () {
                  change(1);
                  Navigator.pop(context);
                },
              ),
              DrawerList(
                icon: Icons.assignment,
                text: "Assignment",
                onTap: () {change(2);
                Navigator.pop(context);},
              ),
                   DrawerList(
                icon: Icons.edit,
                text: "Profile Edit",
                onTap: () {change(3);
                print(barName);
                Navigator.pop(context);},
              ),
            ],
          ),
        ),
        appBar: AppBar(

          title: Text(barName[index]),
          actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: IconButton(
                    onPressed: () {
                      Provider.of<themedata>(context, listen: false)
                          .changetTheme();
                    },
                    icon: Icon(Icons.light_mode)))
          ],
        ),
        body: getWidget[index]);
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({
    super.key,
    this.icon,
    this.onTap,
    this.text,
  });
  final icon;
  final text;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}
