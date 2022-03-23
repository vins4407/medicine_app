// @dart=2.9
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/scr/screens/home.dart';
import 'package:medicine_app/scr/screens/login.dart';
import 'package:medicine_app/scr/screens/register.dart';
//import 'package:firebase_core/firebase_core.dart';



 void main(List<String> args) {
   runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicine App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'home': (context) => Home()
      },
    );
  }
}
