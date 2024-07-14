import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/activites/Changing.dart';
import 'package:provider_app/activites/Editing.dart';
import 'package:provider_app/activites/LogIn.dart';
import 'package:provider_app/providers/counter_provider.dart';
import 'package:provider_app/providers/user_name.dart';
import 'package:provider_app/providers/users_data.dart';

class Home extends StatefulWidget{
  @override
  _Home createState()=> _Home();
}
class _Home extends State<Home>{
  TextEditingController _editingName = TextEditingController();
  @override
  Widget build(BuildContext context){
    final counter = Provider.of<CounterProvider>(context, listen: false);
    final user = Provider.of<UserName>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontSize: 22, color: Colors.white)),
        backgroundColor: Colors.deepOrange
      ),
      body: SafeArea(
        child: Center(
          child: Container(
              child:
                Column(
                  children:[
                    Consumer<CounterProvider>(
                      builder: (context, value, child){
                        return Text('${value.num.toString()}',
                            style: TextStyle(
                              fontSize: 30,
                            )
                        );
                      }
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Consumer<UserName>(
                            builder: (context, value, child){
                              return Text('${value.usr.toString()}', style:TextStyle(
                                  fontSize: 33,
                                  color: Colors.black,
                                  fontWeight:FontWeight.bold
                              ));
                            }
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue
                            ),
                              child: Text('Goto Editing', style: TextStyle(
                                fontSize: 22,
                                color: Colors.white
                              )),
                            onPressed: (){
                                Navigator.push( context,
                                  MaterialPageRoute(builder: (context)=> Editing())
                                );
                            }
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue
                              ),
                              child: Text('Login', style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              )),
                              onPressed: (){
                                Navigator.push( context,
                                    MaterialPageRoute(builder: (context)=> LogIn())
                                );
                              }
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue
                              ),
                              child: Text('Changing', style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              )),
                              onPressed: (){
                                Navigator.push( context,
                                    MaterialPageRoute(builder: (context)=> Changing())
                                );
                              }
                          )
                        ]
                      )
                    )
                  ]
                )

          )
        )
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                context.read<CounterProvider>().increament();
              },
            ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: (){
              context.read<CounterProvider>().decreament();
            }
          )
        ]
      )
    );
  }
}