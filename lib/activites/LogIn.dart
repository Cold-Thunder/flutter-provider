import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/users_data.dart';

class LogIn extends StatefulWidget{
  @override
  _LogIn createState()=> _LogIn();
}
class _LogIn extends State<LogIn>{
  TextEditingController _nameCont = TextEditingController();
  TextEditingController _emailCont = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Log In', style: TextStyle(
              fontSize: 25,
              color: Colors.black,
          )),
          backgroundColor: Colors.purple,
          iconTheme: const IconThemeData(
            color: Colors.white
          )
        ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                  child: TextField(
                    controller: _nameCont,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 22, color: Colors.blue)
                    )
                )
              ),
              SizedBox(
                height: 30
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                      controller: _emailCont,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 22, color: Colors.blue)
                      )
                  )
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                    ),
                    child: Text('Add User', style: TextStyle(
                        fontSize: 22,
                        color: Colors.white
                    )),
                    onPressed: (){
                      context.read<usersData>().addUser(User(name: _nameCont.text.toString(), email: _nameCont.text.toString()));
                    }
                )
              )
            ],
          )
        )
      )
    );
  }
}