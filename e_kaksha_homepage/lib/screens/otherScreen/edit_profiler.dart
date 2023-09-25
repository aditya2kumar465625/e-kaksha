import 'package:e_kaksha_homepage/Component_screen/FullScreenImage.dart';
import 'package:e_kaksha_homepage/Component_screen/bottomTextfiels.dart';
import 'package:e_kaksha_homepage/Constant.dart';
import 'package:e_kaksha_homepage/utility/theme_manager.dart';
import 'package:e_kaksha_homepage/utility/user_info_change.dart/basic_change.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class profile_edit extends StatefulWidget {
  const profile_edit({super.key});

  @override
  State<profile_edit> createState() => _profile_editState();
}

class _profile_editState extends State<profile_edit> {
  Color getColors() {
    Color colors =
        Provider.of<themedata>(context).theme == themedata().lightTheme
            ? Colors.grey.shade600
            : Colors.white70;
    return colors;
  }

  var imagesystem = 'images/user.png';

  @override
  Widget build(BuildContext context) {
    final localData = Provider.of<GetAndSaveImage>(context);
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (Provider.of<GetAndSaveImage>(context, listen: false)
                            .imageBytes !=
                        null) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return fullScreenImage();
                        },
                      ));
                    }
                  },
                  child: GetImage(
                    GetImageProvider:
                        Provider.of<GetAndSaveImage>(context).imageBytes,
                    Height: 200,
                    width: 200,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: GestureDetector(
                    onTap: () async {
                      localData.pickAndConvertImage();
                    },
                    child: Icon(
                      Icons.camera, 
                      size: 50, 
                      color: Colors.grey.shade500, 
                    ),
                  ),
                ),
              ],
            ),
            NameSheet(
                getColors: getColors,
                fieldName: localData.userName,
                icon: Icons.person,
                bottomSheetName: "Enter Your Name",
              checkText: 'userName',
                bottomSheetProvider: localData),
                NameSheet(
                  bottomSheetName: "Enter Your Email",
                  getColors: getColors,
                  checkText: 'email',
                  fieldName: localData.email,
                  icon: Icons.email,
                  bottomSheetProvider: localData,
                )
          ],
        ),
      ),
    ));
  }
}

class NameSheet extends StatelessWidget {
  const NameSheet(
      {super.key,
      this.getColors,
      this.fieldName,
      this.icon,
      this.checkText,
      this.bottomSheetName,
      this.bottomSheetProvider});
  final getColors;
  final fieldName;
  final icon;
  final bottomSheetName;
  final bottomSheetProvider;
  final checkText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: getColors(),
              ),
              borderRadius: BorderRadius.all(Radius.circular(11))),
          child: ListTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) =>
                    BottomEditTextField(provider: bottomSheetProvider,bottomsheetName: bottomSheetName,checkText: checkText,),
              );
            },
            leading: Icon(icon),
            title: Text(fieldName),
            trailing: Icon(Icons.edit),
          ),
        )
      ],
    );
  }
}
