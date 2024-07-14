import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/changing_prov.dart';

class Changing extends StatefulWidget{
  @override
  _Changing createState()=>_Changing();
}
class _Changing extends State<Changing>{
  @override
  Widget build(BuildContext context){
    var _changeProv = Provider.of<changing>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Changing Page', style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        )),
          backgroundColor: Colors.blue,
          iconTheme:const IconThemeData(
              color: Colors.white
          )
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Consumer<changing>(
                builder: (context, value, child){
                  return Container(
                    child: Text(
                      value.opa.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                      )
                    )
                  );
                }
              ),
              Consumer<changing>(
                builder: (context, value, child){
                  return Container(
                    child: Slider(
                      min: 0,
                      max: 1,
                      divisions: 20,
                      value: value.opa,
                      onChanged: (val){
                          _changeProv.setValue(val);
                      }
                    )
                  );
                }
              )
            ]
          )
        )
      )
    );
  }
}