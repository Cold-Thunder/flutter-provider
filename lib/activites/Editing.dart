import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/user_name.dart';

class Editing extends StatefulWidget{
  @override
  _Editing createState()=>_Editing();
}
class _Editing extends State<Editing>{
  TextEditingController _editingName = TextEditingController();
  @override
  Widget build(BuildContext context){
    var wid =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Editing Name', style: TextStyle(fontSize: 22, color: Colors.white)),
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(
          color: Colors.white
        )
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Text('${context.watch<UserName>().usr}', style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ))
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.only(top: 8, bottom: 0, left:5, right: 5),
                height: 60,
                width: (wid/100)*95,
                child: TextField(
                  controller: _editingName,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                  decoration:const InputDecoration(
                      labelText: 'User Name',
                      labelStyle: TextStyle(fontSize: 22, color: Colors.blue),
                      hintText: 'Enter new name...',
                      hintStyle: TextStyle(fontSize: 22, color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Color.fromRGBO(0,0,0,0)
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 0,
                              color: Color.fromRGBO(0,0,0,0)
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
              ),
              Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      child:const Text('Enter New', style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      )),
                      onPressed: (){
                        context.read<UserName>().changeName(newName: _editingName.text.toString());
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