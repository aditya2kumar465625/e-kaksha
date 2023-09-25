import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

class GetAndSaveImage extends ChangeNotifier {
  Uint8List? _imageBytes;

  Uint8List? get imageBytes => _imageBytes;

  final String _imageBoxName = 'userImage';

  Future<void> pickAndConvertImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final bytes = await image.readAsBytes();

      final box = await Hive.openBox<Uint8List>(_imageBoxName);
      final byte = Uint8List.fromList(bytes);
      await box.put(_imageBoxName, byte); 
      setImageBytes(byte);
      box.close();
        }
  }

  Future<void> getImage() async {
    final box = await Hive.openBox<Uint8List>(_imageBoxName);
    _imageBytes = box.get(_imageBoxName, defaultValue: null);
    box.close();
    notifyListeners();
  }

  Future<void> initialize() async {
    await Hive.initFlutter();
    await getImage();
  }

  GetAndSaveImage() {
    initialize();
    getUserName();
    getEmail();
  }

  void setImageBytes(Uint8List byte){
    _imageBytes = byte;
    notifyListeners();
  }


  //Name Change
  String BoxName = 'userName';
  String _userName = 'UserName Not Found';
  String get userName => _userName;
  void change(value)async{
   final box = await Hive.openBox(BoxName);
box.put(BoxName, value);
_userName = value;
notifyListeners();
  }

  void getUserName() async{
    Hive.close();
    final box  = await Hive.openBox(BoxName);
    _userName = box.get(BoxName,defaultValue: 'UserName Not Found');
  }

// email Change 
String BoxNameEmail = 'email';
  String _email = 'Email not found';
  String get email =>_email;
void changEmail(value)async{
   final box = await Hive.openBox(BoxNameEmail);
box.put(BoxNameEmail, value);
_email = value;
notifyListeners();
  }

  void getEmail() async{
    Hive.close();
    final box  = await Hive.openBox(BoxNameEmail);
    _email = box.get(BoxNameEmail,defaultValue: 'Email Not found');
  }
  

}