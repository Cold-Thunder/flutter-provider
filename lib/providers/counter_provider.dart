import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int num;
  CounterProvider({
    this.num = 0,
  });
  void increament(){
    num++;
    notifyListeners();
  }
  void decreament(){
    num--;
    notifyListeners();
  }
}
