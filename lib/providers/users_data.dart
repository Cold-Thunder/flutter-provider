import 'package:flutter/cupertino.dart';

class User{
  var name;
  var email;
  User({
    required this. name, required this.email
  });
}

class usersData extends ChangeNotifier{
  List<User> users= [];

  void addUser(User user){
    users.add(user);
  }

  void removeUser(User user, int index){
    users.removeAt(index);
  }
}