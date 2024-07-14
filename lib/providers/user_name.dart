import 'package:flutter/cupertino.dart';

class UserName extends ChangeNotifier{
  String usr;
  UserName({
    this.usr = 'Md.Hemal',
  });
  void changeName({
    required String newName,
  })async{
    usr = newName;
    notifyListeners();
  }
}