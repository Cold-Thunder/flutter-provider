import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/activites/Home.dart';
import 'package:provider_app/providers/changing_prov.dart';
import 'package:provider_app/providers/counter_provider.dart';
import 'package:provider_app/providers/practice_provider.dart';
import 'package:provider_app/providers/user_name.dart';
import 'package:provider_app/providers/users_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (create) => CounterProvider(),
          ),
          ChangeNotifierProvider(
            create: (create) => UserName(),
          ),
          ChangeNotifierProvider(
              create: (create)=> usersData(),
          ),
          ChangeNotifierProvider(
            create: (create)=> changing(),
          ),
          ChangeNotifierProvider(
            create: (create)=>practice_provider()
          )
        ],
        child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    ));
  }
}

