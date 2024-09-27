import 'package:flutter/cupertino.dart';

class practice_provider extends ChangeNotifier{
  int number;
  practice_provider({
    this.number = 0,
  });

  void increase(){
    number++;
    notifyListeners();
  }
  void decrease(){
    number--;
    notifyListeners();
  }
}