import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/practice_provider.dart';

class Practicepro extends StatefulWidget{
  @override
  _Practicepro createState()=> _Practicepro();
}

class _Practicepro extends State<Practicepro>{
  @override
  Widget build(BuildContext context){
    final pracPro = Provider.of<practice_provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Page', style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        )),
        backgroundColor: Colors.deepOrange,
        iconTheme: const IconThemeData(
          color: Colors.white
        )
      ),
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              Consumer<practice_provider>(
                builder: (context, value, child){
                  return Text('${value.number.toString()}', style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ));
                }
              ),
              ElevatedButton(
                child: Icon(Icons.add),
                onPressed: (){
                  pracPro.increase();
                }
              ),
              ElevatedButton(
                child: Icon(Icons.remove),
                onPressed: (){
                  pracPro.decrease(); 
                }
              )
            ]
          )
        )
      )
    );
  }
}