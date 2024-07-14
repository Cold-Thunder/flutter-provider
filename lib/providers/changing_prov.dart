import 'package:flutter/cupertino.dart';

class changing extends ChangeNotifier{
  var opa;
  changing({
    this.opa = 0.0,
  });
  void setValue(double val){
    opa = val;
    notifyListeners();
  }
}