import 'package:e_kaksha_homepage/utility/user_info_change.dart/basic_change.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomEditTextField extends StatefulWidget {
  BottomEditTextField({super.key,required this.provider,required this.bottomsheetName,required this.checkText});

  final provider;
  String bottomsheetName;
  String checkText;
  @override
  State<BottomEditTextField> createState() => _BottomEditTextFieldState();
}

class _BottomEditTextFieldState extends State<BottomEditTextField> {
  final FocusNode _focusNode = FocusNode();
    TextEditingController controller = TextEditingController() ;
  @override
  void dispose() {
    
    super.dispose();
    _focusNode.dispose();
  }
 
  var providerfun;
  @override
  Widget build(BuildContext context) {
     var provider = Provider.of<GetAndSaveImage>(context);
    if(widget.checkText == provider.BoxName){
      providerfun = provider.change;

    }
    else{
      providerfun = provider.changEmail;
    }

String txt ='';

  Future<void> _showDailog()async{
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Ok"))
        ],
title:const Text("Invalid info"),
content: const SingleChildScrollView(
  child: Text("Please enter a valid information!"),
),
      );
      
    
    },);
  }
  
    return ListView(
      children: [Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           const  SizedBox(
              height: 20,
            ),
             Text(
              widget.bottomsheetName,
              style:const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            WillPopScope(child:TextField(
              controller: controller,
              autofocus: true,
              focusNode: _focusNode,
              onSubmitted: (value){
                if(value != ''){
                  providerfun(value);
                  Navigator.pop(context);
                }
                
              },
              onChanged: (value){
                if(value != ''){
                  txt = value;
                }
              },
              onEditingComplete: (){
                
controller.text = txt;
              },
              
            ) , onWillPop: () async{
              _focusNode.unfocus();
              return true;
            })
            ,
           const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "cancel",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    )),
                const SizedBox(
                  width: 50,
                ),
                TextButton(
                    onPressed: () async {
                      if(controller.text != ''){
                        if(controller.text.length < 35){
                           providerfun(controller.text);
                           Navigator.pop(context);
                        }
                        else{ await _showDailog();
                        }
          
                     
                      }
                    
                      
                    },
                    child: const Text("save",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400))),
              ],
              
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    ]);
  }
}
